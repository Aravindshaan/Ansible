provider "aws" {
  profile    = "terraform_user"
  access_key = "AKIA376645I4W3527BOT"
  secret_key = "gYc8pPm8OfivxCGMrFq4ZUlk3AEK5pSbnJhKZ3VR"
  region     = "ap-northeast-2"
}
resource "aws_instance" "example" {
  ami = "ami-02c956980e9e063e5"
  tags = {
    name = "my-server1"
  }
  instance_type   = "t2.micro"
  key_name        = "SEOUL"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow ssh traffic"

  ingress {
    from_port = "22"
    to_port   = "22"
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }
}


