// 1. terraform validate ==> checks the syntatical error
// 2. terraform plan ==> Gives information what changes will happen
// 3. terraform init ==> downloads the plugin data
// 4. terraform apply ==> applies whatever changes which we want
// 5. terraform apply --auto-approve ==> applies changes and doesn't ask for approval every time
// 6. terraform destroy ==> destorys the infrastructure which we have created
// 7. terraform destroy -<resourceName>.<resourceLocalNameInTerraformFile>
// 8. terraform plan -var "username=Aakash" ==> passess the variable to plan command during run time
// 9. terraform plan -var "username=Aakash" -var "age=20" ===> passes multiple variables to the plan command
//10. terraform plan -var 'users=["aakash","tina","cruze"]’ ==> passes input variable in list format
//11. terraform plan -var 'usersAge={"aakash":20 , "gaurav":25}' ==> passes variable's value in map format
//12. terraform plan -var-file=development.tfvars  ==> to pass custom tfvars file
//13. export TF_VAR_username=Aakash ==> to create terrform compatible env variables... terraform will be able to read this
//14. terraform refresh ===> this command will refresh terraform.tfstate file.. and will pull the latest resource status
//15. terraform show ===> to show tfstate file in command line
//16. terraform console ==> this will give us a console.. where we can access all the vairables and tfstate values directly
//17. terraform fmt ==> this will format the code to proper structure