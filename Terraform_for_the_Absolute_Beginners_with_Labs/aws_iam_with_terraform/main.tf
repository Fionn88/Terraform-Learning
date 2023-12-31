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

resource "aws_iam_policy" "adminUser"{
    name = "AdminUsers"
    policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "mandy-admin-access"{
    user = aws_iam_user.admin-user.name
    policy_arn = aws_iam_policy.adminUser.arn
}