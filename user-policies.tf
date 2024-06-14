provider "aws" {
  region="ap-south-1"
}
resource "aws_iam_user" "user1"{
  name= "Aravind"
}
#=================================================================
# 1.Using an existing policy.
/*
resource "aws_iam_user_policy_attachment" "attach_managed_policy" {
  user       = aws_iam_user.user1.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"  # Replace with your desired policy ARN
}
*/
#=================================================================
#2. Inline policy(create apolicy and attch it)
/*
resource "aws_iam_user_policy" "user_policy" {
  name="EC2FullAccess"
  user=aws_iam_user.user1.name
  policy=jsonencode({
    "Version"= "2012-10-17",
    "Statement": [{
       "Action": "ec2:*",
       "Effect": "Allow"
       "Resource": "*"
       }]
    })
}
*/
#================================================================
#3.create Managed policy.
/*
resource "aws_iam_policy" "ec2_policy" {
  name= "Ec2FullAccessPolicy"
  description="A custom policy for full ec2 access"
  policy=jsonencode({
    Version= "2012-10-17",
    Statement=[
       {
        Action= "ec2:*",
        Effect= "Allow",
        Resource= "*"
       }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  user=aws_iam_user.user1.name
  policy_arn=aws_iam_policy.ec2_policy.arn
}
*/
#==================================================================
#4.create policy using json file.
# Content of ec2-policy.json file
/*
{
  "Version":"2012-10-17",
  "Statement": [
     {
      "Effect":"Allow",
      "Action":"ec2:*",
      "Resource":"*"
     }
  ]
}

**********************
#This is main file
resource "aws_iam_policy" "ec2_policy" {
  name="Ec2FullAccessPolicy"
  description="A custom policy for full ec2 access"
  policy=file("ec2-policy.json")
}
resource "aws_iam_user_policy_attachment" "user_policy_attachmnet"{
  user=aws_iam_user.user1.name
  policy_arn= aws_iam_policy.ec2_policy.arn
}
*/
#======================================================================
#5. using aws iam policy document
/*
data "aws_iam_policy_document" "ec2_policy"{
  statement{
    actions=["ec2:*"]
    resources=["*"]
    effect="Allow"
  }
}

resource "aws_iam_policy" "ec2_policy"{
  name="Ec2FullAccessPolicy"
  description="A custom policy for full ec2 access"
  policy= data.aws_iam_policy_document.ec2_policy.json
}
resource "aws_iam_user_policy_attachment" "user_policy_attachmnet"{
  user=aws_iam_user.user1.name
  policy_arn=aws_iam_policy.ec2_policy.arn
}

*/
