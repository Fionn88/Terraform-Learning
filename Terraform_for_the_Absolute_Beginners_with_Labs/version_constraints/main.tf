terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        # version = "> 2.0.0"
        # version = "~> 1.2"
        version = "> 1.2.0, < 2.0.0, != 1.4.0"
    }
  }
  
}
resource local_file pet {
  content = "We love pets!"
  filename             = "${path.module}/files/outputfile"
}

