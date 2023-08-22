variable "AWS_ACCESS_KEY" {
  type        = string
  default     = ""
}

variable "AWS_SECRET_KEY" {
  type        = string
  default     = ""
}


variable "AWS_REGION" {
  type        = string
  default     = "ap-southeast-1"
}

variable "AMIS" {
  type        = string
  default     = "ami-0d21214905506a7f4"
}

variable bucket {
  type        = string
  default     = "flexit-payroll-alpha-22001c"
}