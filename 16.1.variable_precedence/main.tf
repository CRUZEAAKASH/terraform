//There are 4 ways of defining variables.. and it follows the precedence in this format... 
// this list is from lowe to high precedence..
//means... item 1 is at the lowest precedence.. vs item item 5 is at the highest precedence

//1. Environment variables
//2. The terraform.tfvars file, if present.
//3. The terraform.tfvars.json file, if present.
//4. Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
//5. Any -var and -var-file options on the command line, in the order they are provided. (This includes variables set by a Terraform Cloud workspace.)