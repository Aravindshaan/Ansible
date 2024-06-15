#vars.tf file
variable "ami-value" {
  type=string
  description="this ami is used"
}

variable "instance_type_value" {
  default="t2.micro"
}
variable "environment" {
  type=string
  default="development"
}
variable "create-instance" {
  type=bool
  default=true
}
#===============
#vars.tfvars file
ami=ami-some value


#===================
#main.tf
provider "aws" {
  region="ap-south-1"
}
resource "aws_instance" "example" {
  ami=var.ami-value
  instance_type= var.instance_type_value
  count=var.create-instance? 1 : 0    #if create-instance condition is true , then only create the instance.
}

#SYNTAX:
# condition ? true_value : false_value
