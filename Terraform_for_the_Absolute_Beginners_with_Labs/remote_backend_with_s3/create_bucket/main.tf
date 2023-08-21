resource "aws_s3_bucket" "terraform_state" {
  bucket = "s3-example-terraform-state"
  versioning {
    enabled = true
  }
}