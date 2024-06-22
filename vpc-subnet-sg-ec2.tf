provider "aws" {
  region="ap-south-1"
}

resource "aws_vpc" "vpc_1" {
  cidr_block="10.0.0.0/16"
}
resource "aws_subnet" "subnet1" {
  vpc_id=aws_vpc.vpc_1.id
  cidr_block="10.0.0.0/24"
  availability_zone="ap-south-1b"
  map_public_ip_on_launch = true
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

}
resource "aws_instance" "example-1" {
  ami = "ami-0f58b397bc5c1f2e8"
  instance_type= "t2.micro"
  key_name="mumbai"
  subnet_id=aws_subnet.subnet1.id   
# subnet_id="subnet-023c7ec910ff444b9"  # In case of existing subnet
  vpc_security_group_ids=[aws_security_group.allow_ssh.id]
  tags= {
    name="my-server"
  }
}


