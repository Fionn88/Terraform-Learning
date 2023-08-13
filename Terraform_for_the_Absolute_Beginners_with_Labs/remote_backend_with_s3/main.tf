resource local_file pet {
  content = "We love pets!"
  filename             = "files/pets.txt"
}


terraform {
  backend "s3" {
      bucket = "finance-13082023"
      key = "finance/terraform.tfstate"
      dynamodb_table = "state-locking"
      region = "ap-southeast-1"
  }
}
