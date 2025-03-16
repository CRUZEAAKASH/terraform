output "printUsersAge" {
  value = "Hello gaurav... your age is ${lookup(var.usersAge, "saurav")}"
}