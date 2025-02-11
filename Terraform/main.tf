provider "aws" {
  region = "us-east-1"
}

# security group creation
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Creating an EC2 instance
resource "aws_instance" "example" {
  ami             = "ami-002db26d4a4c670c1"  # Replace with your valid AMI ID for your region
  instance_type   = "t2.micro" 
  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "Terraform-demo"
  }
}

