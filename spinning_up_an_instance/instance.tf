// 在資料夾內建立一個檔名為 .terraform.tfvars 檔案，內容如下
# KEY = {
#   ACCESS_KEY="YOUR ACCESS_KEY"
#   SECRET_KEY="YOUR SECRET_KEY"
# }


variable "KEY" {

}

provider "aws" {
  access_key = var.KEY.ACCESS_KEY
  secret_key = var.KEY.SECRET_KEY
  region     = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0d21214905506a7f4"
  instance_type = "t2.micro"
}