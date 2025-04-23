// in this file.. we are using 2 resource blocks pet and my-pet.... here we have explicitly mentioned that local_file depends on random_pet
// so this is a case of explicit dependency

resource "local_file" "pet" {
  filename   = "${path.module}/pet.txt"
  content    = "My favourite pet is cat"
  depends_on = [random_pet.my-pet]
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}