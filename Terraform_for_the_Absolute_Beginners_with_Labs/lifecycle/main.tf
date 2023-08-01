resource "aws_instance" "webserver" {
    ami = "ami-0edab43b6fa892279"
    instance_type = "t2.micro"
    tags = {
        Name = "ProjectA-Webserver"
    }
    lifecycle {
        ignore_changes = [
            tags
        ]
    }
}

resource local_file pet {
  content = "We love pets!"
  filename             = "/root/pets.txt"
  file_permission      = 0777
  lifecycle {
    create_before_destroy = true
    # prevent_destroy = true
  }
}