terraform {
  backend "s3" {
    bucket = "s3-example-terraform-state"
    region = "ap-southeast-1"
    key = "terraform.tfstate"
    encrypt = true
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "s3-example-terraform-state"
  versioning {
    enabled = true
  }
}
