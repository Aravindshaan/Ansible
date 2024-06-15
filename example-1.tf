#main.tf file
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance-1" {
  ami           = var.ami-value
  instance_type = var.instance_type-value
  count         = var.count-value
}
#===================================================
# cat vars.tf
variable "ami-value" {
  type        = string
  description = "ami id"
}
variable "instance_type-value" {
  type        = string
  description = "instance type"
}
variable "count-value" {
  description = "no of inastances"
}
#===================================================
# cat terraform.tfvars
ami-value           = "ami-0f58b397bc5c1f2e8"
instance_type-value = "t2.micro"
count-value         = "2"
#===================================================
# cat output.tf    for single instnace
output "public_ip_address" {
  value=aws_instance.instance-1.public_ip
}
#************ use any one *****************
# cat output.tf    for multiple instnaces
output "public_ip_addresses" {
  value=[for instance in aws_instance.instance-1:instance.public_ip]
}
=====================================================

