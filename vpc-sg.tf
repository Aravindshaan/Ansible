provider "aws" {
  region="ap-south-1"
}
/*
resource "aws_instance" "example" {
  ami = "${var.ami-value}"
  instance_type= var.instance_type_value
  key_name="mumbai"
  tags= {
    name="my-server"
  }
  user_data = file("${path.module}/setup.sh")
  security_groups= ["${aws_security_group.allow_ssh.name}"]
}
*/
resource "aws_vpc" "vpc_1" {
  cidr_block="10.0.0.0/16"
}
resource "aws_security_group" "allow_ssh" {
  name="allow ssh"
  vpc_id=aws_vpc.vpc_1.id
  ingress {
   from_port="22"
   to_port="22"
   protocol="tcp"
   cidr_blocks=["0.0.0.0/0"]
  }

  egress {
    from_port=0
    to_port=0
    protocol="-1"
    cidr_blocks=["0.0.0.0/0"]
  }
}


