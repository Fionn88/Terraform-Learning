resource "aws_s3_bucket" "finance" {
    bucket = "finance-11082023"
    tags = {
        Description = "Finance and Payroll"
    }
}


resource "aws_s3_bucket_object" "finance-2023" {
    content = "files/pet.txt"
    key = "finance-2023.doc"
    bucket = aws_s3_bucket.finance.id
}

data "aws_iam_user" "finance-data" {
    user_name = "mandy"
}

resource "aws_s3_bucket_policy" "finance-policy" {
    bucket = aws_s3_bucket.finance.id
    policy = <<EOF
    {
        "Version" : "2012-10-17",
        "Statement": [
            {
                "Effect" : "Allow",
                "Action": "*",
                "Resource": "arn:aws:s3:::${aws_s3_bucket.finance.id}/*",
                "Principal": {
                    "AWS": [
                        "${data.aws_iam_user.finance-data.arn}"
                    ]
                }
            }
        ]
    }
    EOF
}

