resource local_file pet {
  sensitive_content = "Hello The File Name"
  filename             = var.filename
}
