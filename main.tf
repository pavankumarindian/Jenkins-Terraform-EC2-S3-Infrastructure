provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "myInstance" {
  ami           = "ami-05c0f5389589545b7"
  instance_type = "t2.micro"
  key_name      = "demo-key"     
  tags = {
      Name = "TF-Instance"
  }
}

# Define your S3 backend to save the state file in an S3 bucket
terraform {
  backend "s3" {
    bucket = "pavanssonixbucket1"
    key    = "terraform.tfstate"
    region = "ap-south-1"  # Specify the AWS region for your S3 bucket
  }
}