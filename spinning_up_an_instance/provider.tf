// 在資料夾內建立一個檔名為 terraform.tfvars 檔案，內容如下
# ACCESS_KEY="YOUR ACCESS_KEY"
# SECRET_KEY="YOUR SECRET_KEY"
# AWS_REGION="ap-southeast-1"
provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}