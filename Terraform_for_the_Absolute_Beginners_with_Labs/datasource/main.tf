resource local_file pet {
  content = data.local_file.dog.content
  filename             = "${path.module}/files/pets.txt"
}

data "local_file" "dog"{
    filename = "${path.module}/files/dog.txt"
}