#VPC Variable

vpc_cidr               = "192.168.0.0/16"
tenancy                = "default"
subnet_cidr_public     = "192.168.3.0/24"
subnet_cidr_private    = "192.168.4.0/24"
subnet_cidr_mypublic   = "192.168.5.0/24"

#EC2 Variable

ec2_ami                  = "ami-082ccf4cbcda7b2b4"
ec2_instance             = "t2.micro"
ec2_key                  = "abc"


ec2_ami_my_instance      = "ami-04a50faf2a2ec1901"
ec2_instance_my_instance = "t2.micro"
ec2_key_my_instance      = "abc"
