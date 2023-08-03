resource local_file pet {
  content = "Hello!"
  filename             = each.value
  for_each = toset(var.filename)
}
