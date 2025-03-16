output "printUsersAge" {
  value = "Hello ${var.usersName} !!!! Your age is ${lookup(var.usersAge,"${var.usersName}")}"
}