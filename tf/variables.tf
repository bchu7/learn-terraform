variable "content" {
  default = "I love my pets!"
}
variable "separator" {
  default = "."
}
variable "length" {
  default = "1"
}
variable "prefix" {
  default = ["Mr", "Mrs", "Sir", "Mister"]
  type    = list(string)
}

# set is like a list, but entries must be unique
variable "set-content" {
  type    = set(number)
  default = [1, 3, 5]
}

# like a list, but entries can be from different types
variable "kitty" {
  type    = tuple([string, number, bool])
  default = ["cat", 10, true]
}

variable "list-content" {
  type = map(string)
  default = {
    "file1" = "I love my dog!"
    "file2" = "I love my cat!"
    "file3" = "I love my hamster!"
  }
}

variable "animal" {
  type = object({
    name         = string
    color        = string
    age          = number
    food         = list(string)
    favorite_pet = bool
  })
  default = {
    name         = "Dog"
    color        = "Brown"
    age          = 10
    food         = ["meat", "vegetables"]
    favorite_pet = true
  }
}
