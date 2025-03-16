output "printUsers" {
  value = "Hello ${join(",", var.users)}"
}

output "toLower" {
  value = "Hello ${lower(var.users[1])}"
}

output "toUpper" {
  value = "Hello ${upper(var.users[2])}"
}

output "toTitle" {
  value = "Hello ${title(var.users[0])}"
}


