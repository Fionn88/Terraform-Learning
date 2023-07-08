variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  type        = string
  default     = "ap-southeast-1"
}

variable "AMIS" {
  type        = map(string)
  default     = {
    ap-southeast-1 = "ami-0d21214905506a7f4"
    ap-east-1 = "ami-051699ed177bc3d67"
    ap-northeast-1 = "ami-0734302e3a97c15aa"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}