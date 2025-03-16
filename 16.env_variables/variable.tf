variable "usersName" {
  type = string
}

variable "usersAge" {
  type = number
}

// TO define env variables.. use command like
// TF_VAR_<variableName>=<variableValue>