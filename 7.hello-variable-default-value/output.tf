output "hello1" {
  value = "Hello ${var.username}"
}


// Now.. in this case... if you will run only "terraform plan".. our output will be "Hello World"
// If you run terraform plan -var "username=Aakash" .. our output will be "Hello Aakash"
//So.. if you are passing the value name.. it will be used.. otherwise default value will be used