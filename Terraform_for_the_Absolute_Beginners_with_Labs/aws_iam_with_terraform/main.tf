provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_iam_user" "admin-user"{
    name = "mandy"
    tags = {
        Description = "Technical Team Leader"
    }
}