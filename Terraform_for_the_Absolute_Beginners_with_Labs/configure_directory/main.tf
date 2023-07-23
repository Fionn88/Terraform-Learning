resource local_file pet {
  filename             = "${path.module}/files/pets.txt"
  content              = "We love pets!"
  file_permission      = 0777
  directory_permission = 0777
}
