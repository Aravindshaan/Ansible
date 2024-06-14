provider "aws" {
  region="ap-south-1"
}
# write this in varaiable section
variable "user-name" {
  type=list(string)
  default=["aravind","arun"]
}
#=====================
# For multiple users
resource "aws_iam_user" "user1"{
  count=length(var.user-name)
  name= var.user-name[count.index]
}
#======================
# for single user
resource "aws_iam_user" "user1"{
  name= "Aravind"
}
