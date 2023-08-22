resource "aws_instance" "app-server" {
  ami           = var.AMIS
  instance_type = "t2.micro"
  tags = {
    Name = "${var.AWS_REGION}-app-server"
  }
  depends_on = [
    aws_dynamodb_table.payroll_db,
    aws_s3_bucket.payroll_data
  ]
}