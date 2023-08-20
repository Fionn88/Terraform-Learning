variable "AWS_ACCESS_KEY" {
  type        = string
}

variable "AWS_SECRET_KEY" {
  type        = string
}

variable "AWS_REGION" {
  type        = string
  default     = "ap-southeast-1"
}

variable "AMIS" {
  type        = map
  default     = {
    ap-southeast-1 = "ami-08fad42036d22d32d"
    ap-east-1 = "ami-051699ed177bc3d67"
    ap-northeast-1 = "ami-0734302e3a97c15aa"
  }
}
