//There are 4 ways of defining variables.. and it follows the precedence in this format... 
// this list is from lowe to high precedence..
//means... item 1 is at the lowest precedence.. vs item item 5 is at the highest precedence

//1. Environment variables
//2. The terraform.tfvars file, if present.
//3. The terraform.tfvars.json file, if present.
//4. Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
//5. Any -var and -var-file options on the command line, in the order they are provided. (This includes variables set by a Terraform Cloud workspace.)


//one important thing to note here is that: files will be loaded in the order mentioned above... that variables from env file will be loaded first
// then from .tfvars file.. then from auto.tfvars file.... but you need to remember that.. if all of these variables will have the same name..
// then their value will be overridden with the higher precedence variable.. meaning..
// variable value from env will be loaded first.. but it will be overridden with the value from -var or -var-file option