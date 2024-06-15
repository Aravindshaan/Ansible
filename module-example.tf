provider "aws" {
  region = "ap-south-1"
}

module "ec2-instance" {
  source              = "/home/ubuntu/terraform/modules/ec2-instance"
  ami-value           = "ami-0f58b397bc5c1f2e8"
  instance_type-value = "t2.micro"
  count-value         = "2"
}

# Took example-1.tf as a module, because the files are present in ec2-instance directory which is present in modules directory.
# source must be the path toi the files, which are present under modules directory.
# module "ec2-instance" is the sub directory under modules directory where all files are present.
