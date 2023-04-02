# Terraform Configuration for Deploying an EC2 Instance in AWS

This Terraform configuration creates an EC2 instance in the ap-south-1 region of AWS. The instance is launched in a subnet and is associated with a network interface.

## Prerequisites

Before running this Terraform code, you must have the following:

- An AWS account with the necessary permissions to create VPCs, subnets, network interfaces, and EC2 instances.
- The AWS CLI installed on your machine and configured with your AWS access key and secret access key.

## Usage

To use this Terraform code, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the directory where the Terraform configuration files are located.
3. Run `terraform init` to initialize the Terraform workspace.
4. Run `terraform plan` to see a preview of the changes that Terraform will make.
5. Run `terraform apply` to create the VPC, subnet, network interface, and EC2 instance.

## Cleanup

To delete the resources created by this Terraform code, run `terraform destroy`. This will remove the VPC, subnet, network interface, and EC2 instance.
