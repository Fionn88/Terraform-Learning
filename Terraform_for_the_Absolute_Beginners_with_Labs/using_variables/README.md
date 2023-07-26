# Guess The Output File Name

> `export TF_VAR_filename=files/cats.txt`

- Create File `terraform.tfvars`
```
filename = "files/pets.txt"
```

- Create File `variable.auto.tfvars`
```
filename = "files/mypets.txt"
```

> `terraform apply -var "filename=files/best-pet.txt"`


| Order | Option |
| -------- | -------- |
| 1 | Environment Variables |
| 2 | terraform.tfvars      |
| 3 | *.auto.tfvars (alphabetical order) |
| 4 | -var or -var-file(command-line flags) |


## Answer: files/best-pet.txt





