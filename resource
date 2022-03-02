resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}



The resource code:
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

