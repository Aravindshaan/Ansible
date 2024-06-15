In var.tf file write this
variable "ami-value" {
  type=string
  description="this ami is used"
  default= "ami-0e1d06225679bc1c5"
}

variable "instance_type_value" {
  default="t2.micro"
}

variable "count-value" {
  default="3"
}

=================================================
In main.tf file write this.

provider "aws" {
  region="ap-south-1"
}
resource "aws_instance" "example" {
  ami = "${var.ami-value}"
  instance_type= var.instance_type_value
  key_name="mumbai"
  count=var.count-value                                                     # no. of instances
  tags= {
    name="myserver-${count.index}"                                          # like myserver-1, myserver-2, myserver-3 and so on
  }
#  security_groups= ["${aws_security_group.allow_ssh.name}"]                # or // single line comment
}
/*   Multi line comment
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

