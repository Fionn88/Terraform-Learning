// =========== Typing `terraform console` ===============

provider "aws"{

}

// 在資料夾內建立一個檔名為 terraform.tfvars 檔案，內容如下
// AWS_REGION="eu-west-1"

variable "AWS_REGION" {
  type        = string
}

variable "AMIS" {
  type        = map(string)
  default     = {
    eu-west-1 = "my ami"
  }
}

# > var.AWS_REGION
# "eu-west-1"
# > exit

resource "aws_instance" "example1" {
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}

resource "aws_instance" "example2" {
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.small"
}

resource "aws_instance" "example3" {
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}
