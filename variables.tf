variable "filename" {
  default = "./pets.txt"
}

variable "content" {
  default = "We love pets!"
}

variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type    = list(string)
}

variable "prefix-map" {
  default = {
    "key1" : "prop1"
  }
  type = map(string)
}

variable "kitty" {
  type    = tuple([string, number, bool])
  default = ["cat", 7, true]
}

variable "separator" {
  default = "."
}

variable "length" {
  default = 1
}
