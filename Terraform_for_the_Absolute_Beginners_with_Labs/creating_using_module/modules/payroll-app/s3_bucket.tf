resource aws_s3_bucket payroll_data {
    bucket = "${var.AWS_REGION}-${var.bucket}"
}