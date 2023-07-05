// =========== Typing `terraform console` ===============



variable "myvar" {
  type        = string
  default     = "hello terraform"
  description = "description"
}

# > "${var.myvar}"
# "hello terraform"

variable "mymap" {
  type        = map(string)
  default     = {
    mykey = "my value"
  }
}

# > var.mymap
# tomap({
#   "mykey" = "my value"
# })
# > var.mymap.mykey
# "my value"
# > var.mymap["mykey"]
# "my value"
# > "${var.mymap["mykey"]}"
# "my value"


variable "mylist" {
  type        = list
  default     = [1,2,3]
  description = "description"
}


# > var.mylist[0]
# 1
# > var.mylist[1]
# 2
# > element(var.mylist, 1)
# 2
# > element(var.mylist, 0)
# 1
# > slice(var.mylist,0, 2)
# tolist([
#   1,
#   2,
# ])
