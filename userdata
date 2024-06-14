install.sh
#!/bin/bash

echo "hi arun from user data" > /tmp/file1
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

==========================================
main.tf

provider "aws" {
  region="ap-south-1"
}
resource "aws_instance" "example" {
  ami = "ami-0f58b397bc5c1f2e8"
  instance_type= "t2.micro"
  key_name="mumbai"
  tags= {
    name="my-server"
  }
  security_groups=["default"]
  user_data="${file("install.sh")}"
}


