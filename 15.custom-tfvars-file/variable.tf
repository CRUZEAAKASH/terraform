variable "usersName" {
  type = string
}

variable "usersAge" {
  type = number
}

//Here while running terraform apply or terraform plan command, you need to pass the name of the custom .tfvars file name
//your command will be like - terraform plan --file-name development.tfvars