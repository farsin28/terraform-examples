I have used Visual Studio Code as an editor to write in files, we can use an editor of our choice and copy paste the following configurations to create variables.tf, terraform.tfvars and main.tf


Create main.tf which is responsible to create an EC2 on AWS. This main.tf(ec2-provision.tf ) will read values of variables from variables.tf and terraform.tfvars.



Create variables.tf which contains the declaration and definition of the variables.
Once variables.tf file is created, We need to change values assigned to variable. We must change ami_key_pair_name, ami_id and subnet_id as these are specific to the environment.


Create terraform.tfvars which contains the definition of access_key and secret_key variables defined in the above file.
The following keys need to be changed with the keys of our IAM user.
~~~
access_key = "Access Key of IAM User"
secret_key = "Secret Key of IAM User"
~~~


terraform init command downloads and installs plugins for providers used within the configuration. In our case it is AWS.
terraform init
terraform plan command is used to see the changes that will take place on the infrastructure.
 terraform plan
terraform apply command will create the resources on the AWS mentioned in the main.tf file. It will be prompted to provide our input to create the resources.
terraform apply
When we execute the above command, we can see that 1 new resource has been added and 0 has been destroyed in the output.

We can go to the AWS EC2 console to verify if the EC2 instance is created or not.

Deleting the created EC2 instance using Terraform
If we no longer require resources that we have created using the configuration mentioned in the main.tf file, we can use the terraform destroy command to delete all those resources.
terraform destroy
Thanks for reading my article till end. 
