// 1. terraform validate                            ==> checks the syntatical error
// 2. terraform plan                                ==> Gives information what changes will happen
// 3. terraform init                                ==> downloads the plugin data
// 4. terraform apply                               ==> applies whatever changes which we want
// 5. terraform apply --auto-approve                ==> applies changes and doesn't ask for approval every time
// 6. terraform destroy                             ==> destorys the infrastructure which we have created
// 7. terraform destroy -<resourceName>.<resourceLocalNameInTerraformFile>
// 8. terraform plan -var "username=Aakash" ==> passess the variable to plan command during run time
// 9. terraform plan -var "username=Aakash" -var "age=20" ===> passes multiple variables to the plan command
//10. terraform plan -var 'users=["aakash","tina","cruze"]’ ==> passes input variable in list format
//11. terraform plan -var 'usersAge={"aakash":20 , "gaurav":25}' ==> passes variable's value in map format
//12. terraform plan -var-file=development.tfvars  ==> to pass custom tfvars file
//13. export TF_VAR_username=Aakash ==> to create terrform compatible env variables... terraform will be able to read this
//14. terraform refresh ===> this command will refresh terraform.tfstate file.. and will pull the latest resource status. this is deprecated
//15. terraform show ===> to show tfstate file in command line
//16. terraform console ==> this will give us a console.. where we can access all the vairables and tfstate values directly
//17. terraform fmt ==> this will format the code to proper structure
//18. terraform providers ==> this will list all the providers used in our tf file
//19. terraform providers mirror <new Directory Path> ====> this will copy all the provier configuration to a new path
//20. terraform output ====> to print the output of all the variables
//21. terraform output <variableName> ===> to print the output of a specified variable name
//22. terraform graph -type=plan  -draw-cycles | dot -Tsvg >graph.svg ==> this will generate a graph in dot format... and then will store this in a svg format...
//23. terraform state list [options] [address]   ===> this is to list all the resources being managed by terraform... local or remote doesn't matter
//24. terraform state show <resourceName          ===> to show all the attributes of a reesource being tracked by terraform state
//25. terraform state mv [options] source destination   ====> to move the backend tfstate items
//26. terraform state pull ====> to pull the items of tfstate file present at the remote location
//27. terraform state rm  =====> to remove items from the remote tfstate file... remembe to remove the config files manully later on..
//28. terraform ` <resource> ====> this will mark the resource as tainted.. and on next plan and apply command.. it wil destroy the existing resource and will recreate it
//29. terraform untaint <resource> ===> this will mark the resource as untainted.... and on the next plan and apply command.. it will keep the infra as it is
//30. export TF_LOG={Enter Logging Level} ====> you can enter any value from INFO , WARNING , ERROR , DEBUG , TRACE to get the appropriate level of debugging
//31. export TF_LOG_PATH={Eneter file location}  ====> Need to enter the file path where the logs will be stored
//32. terraform import <resource_type>.<resource_name> <resource_id>    ====> this will import resource to be managed by Terraform
//33. terraform workspace new ProjectB  ======> this will create a new terraform workspace B
//34. terraform workspace select ProjectA =====> this will switch to project A
//35. terraform workspace list ======> to list all the workspace present
//36. terraform force-unlock    ======> to disable the lock incase process is terminated unexpectdly without releasing the lock
//37. terraform init --backend-config=nonProd.conf    ====> this is done to set the backend with the propoerties defined in the conf file
//38. terraform plan -refresh-only ======> to determine the drift between the state file and the actual configuration. this will show the changes which can be applied into tfstate file
//39. terraform apply -refresh-only ====> to apply the changes only in the .tfstate file




//Sequence of command will be:
//1. terraform fmt
//2. terraform validate
//3. terraform providers
//4. terraform init
//5. terraform plan
//6. terraform apply
//7. terraform destroy


//LifeCycle Rules:
//1. Option 1 - create_before_destory : true ===> this will force terraform to first create a new resource, and then only delete the existing one
//2. Option 2 - prevent_Destory : true       ===> this will prevent terraform from deleting any existing resource
//3. Option 3 - ignore _changes : all        ===> this will tell terraform to ignore all the changes.. so on running terraform plan you will not see
//                                                 any change

