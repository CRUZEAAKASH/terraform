variable "age" {
  type    = number
  default = 100
  validation {
    condition     = var.age > 2
    error_message = "Your are too young"
  }
}


variable "name" {
  type = string
  validation {
    condition     = can(regex("(?i)peter", var.name))
    error_message = "Please enter the corret name"
  }
}


// Here we have added a validation block inside variable block
// this will act as a whitelisting approach..
// in case condition defined under the validation block fails duting terraform plan command, then it will throw this error in the terminal