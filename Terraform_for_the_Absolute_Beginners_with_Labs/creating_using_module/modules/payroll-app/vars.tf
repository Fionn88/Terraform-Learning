variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  type        = string
  default     = "ap-southeast-2"
}

variable "AMIS" {
  type        = string
  default     = "ami-001ce199760f46907"
}

variable bucket {
  type        = string
  default     = "flexit-payroll-alpha-22001c"
}
