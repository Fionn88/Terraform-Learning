resource "aws_instance" "webserver" {
  ami           = lookup(var.AMIS, var.AWS_REGION,"")
  instance_type = "t2.micro"
  tags = {
    Name = "webserver"
    Description = "An Nginx WebServer on Ubuntu"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]
  }
  connection {
    host        = coalesce(self.public_ip, self.private_ip)
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("files/mykey")
  }
  key_name = aws_key_pair.web.id
  vpc_security_group_ids = [ aws_security_group.ssh-access.id ]
}

resource "aws_key_pair" "web"{
  public_key = file("files/mykey.pub")
}

resource "aws_security_group" "ssh-access"{
  name = "ssh-access"
  description = "Allow SSH access from the Internet"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
output publicip {
  value       = aws_instance.webserver.public_ip
}

