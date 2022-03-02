resource "aws_instance" "app" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type

  tags = {
    Name = "IAAC"
  }
}

