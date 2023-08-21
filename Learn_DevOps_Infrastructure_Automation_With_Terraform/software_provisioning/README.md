- issue

> terraform apply
```
│ Error: file provisioner error
│ 
│   with aws_instance.example,
│   on instance.tf line 11, in resource "aws_instance" "example":
│   11:   provisioner "file" {
│ 
│ timeout - last error: dial tcp 13.215.155.21:22: i/o timeout
```