provider "aws" {
  region                   = "us-west-1"
  shared_credentials_files  = ["/Users/raoul/.aws/creds"]
  profile                  = "raoul"
  
}

module "my_vpc" {
source                = "./module/vpc"
vpc_cidr              = var.vpc_cidr
tenancy               = var.tenancy
subnet_cidr_public    = var.subnet_cidr_public
subnet_cidr_private   = var.subnet_cidr_private
subnet_cidr_mypublic  = var.subnet_cidr_mypublic
}


module "my_ec2" {
source                   = "./module/ec2"
ec2_ami                  = var.ec2_ami
ec2_instance             = var.ec2_instance
ec2_key                  = var.ec2_key
subnet_id_public         = module.my_vpc.subnet_id_public
subnet_id_mypublic       = module.my_vpc.subnet_id_mypublic
ec2_ami_my_instance      = var.ec2_ami_my_instance
ec2_instance_my_instance = var.ec2_instance_my_instance
ec2_key_my_instance      = var.ec2_key_my_instance 
}
