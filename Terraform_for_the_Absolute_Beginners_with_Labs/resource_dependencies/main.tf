resource local_file pet {
  content = "My favorite pet is Mr.Cat"
  filename             = var.filename
  depends_on = [
    random_pet.my-pet
  ]
}

resource random_pet my-pet {
  length    = var.length
  prefix    = var.prefix
  separator = var.separator
}
