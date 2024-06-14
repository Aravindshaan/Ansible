write vars.tf file like below.

variable "ami-value" {
  type=string
  description="this ami is used"
}

variable "instance_type_value" {
  default="this is instance type"
}

================================
write another file called .tfvars and declare values here.

ami-value="ami-0e1d06225679bc1c5"
instance_type_value="t2.micro"


================================

write the main file like below.

provider "aws" {
  region="ap-south-1"
}
resource "aws_instance" "example" {
  ami = "${var.ami-value}"
  instance_type= var.instance_type_value
  key_name="mumbai"
  tags= {
    name="Aravind"
  }
#  security_groups= ["${aws_security_group.allow_ssh.name}"]
}
/*
resource "aws_security_group" "allow_ssh" {
  name="allow ssh"
  ingress {
   from_port="22"
   to_port="22"
   protocol="tcp"
   cidr_blocks=["0.0.0.0/0"]
  }
}
*/


