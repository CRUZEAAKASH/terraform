variable "usersAge" {
  type = map(any)
  default = {
    gaurav = 20
    saurav = 19
  }
}

output "printUsersAge" {
  value = "Hello gaurav... your age is ${lookup(var.usersAge, "saurav")}"
}
