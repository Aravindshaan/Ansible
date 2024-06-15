provider "aws" {
  region = "ap-south-1"
}
resource "aws_s3_bucket" "my_bucket-1" {
  bucket = "aravind-s3-terraform-demo"          # No capital letters and Underscores
  acl="private"
  tags= {
   name= "terraform-demo"
  }
}
# if needed we write this section in output.tf file
output "bucket_arn" {
  value=aws_s3_bucket.my_bucket-1.arn
}
output "bucket_name" {
  value = aws_s3_bucket.my_bucket-1.bucket
}

