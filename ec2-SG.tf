provider "aws" {
  region="ap-south-1"
}
resource "aws_instance" "example" {
  ami = "ami-0e1d06225679bc1c5"
  instance_type="t2.micro"
  key_name="mumbai"
  tags= {
    name="Aravind"
  }
  security_groups= ["${aws_security_group.allow_ssh.name}"]
}  
resource "aws_security_group" "allow_ssh" {
  name="allow ssh"
  ingress {
   from_port="22"
   to_port="22"
   protocol="tcp"
   cidr_blocks=["0.0.0.0/0"]
  }
}
