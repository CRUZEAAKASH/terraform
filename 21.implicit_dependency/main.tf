// in this file.. we are using 2 resource blocks pet and my-pet.... now.. pet loca_file block is dependent on the output of random_pet block..
// this is called implicit dependency in terraform.. where tf knows that it needs to execute random_pet block first..

resource "local_file" "pet" {
  filename = "${path.module}/pet.txt"
  content  = "My favourite pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}