variable prefix_list {
  type        = list
  default     = ["Mr","Mrs","Sir"]
}

variable prefix {
  default     = ["Mr","Mrs","Sir"]
  type        = set(string)
}

variable fruit {
  type        = set(string)
  default     = ["apple","banana"]
}

variable age {
  type        = set(number)
  default     = [10,12,15]
}

variable bella {
  type        = object({
    name = string
    color = string
    age = number
    food = list(string)
    favoritge_pet = bool
  })
  default     = {
    name = "bella"
    color = "brown"
    age = 7
    food = ["fish","chicken","turkey"]
    favoritge_pet = true
  }
}

variable kitty {
  type        = tuple([string, number, bool])
  default     = ["cat",7,true]
}

variable cats {
  type        = map(string)
  default     = {
    "color" = "brown"
    "name" = "bella"
  }
}

variable pet_count {
  type        = map(number)
  default     = {
    "dogs" = 3
    "cats" = 1
    "goldfish" = 2
  }
}




