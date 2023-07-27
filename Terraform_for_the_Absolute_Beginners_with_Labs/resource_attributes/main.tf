resource local_file pet {
  sensitive_content = "My favorite pet is ${random_pet.my-pet.id}"
  filename             = var.filename
}

resource random_pet my-pet {
  length    = var.length
  prefix    = var.prefix
  separator = var.separator
}
