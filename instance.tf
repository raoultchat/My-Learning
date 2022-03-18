resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance
  key_name      = var.ec2_key
  subnet_id     = var.subnet_id_public
tags = {
    Name = "Raoul-AWS-Testing"
  } 

}

resource "aws_instance" "app" {
  ami           = var.ec2_ami_my_instance
  instance_type = var.ec2_instance_my_instance
  key_name      = var.ec2_key_my_instance
  subnet_id     = var.subnet_id_mypublic
tags = {
    Name = "DevOps-Eng-Testing"
  }

}   

