variable "ami" {
  description = "EC2 instance AMI ID"
  type        = string
  default     = "ami-05c0f5389589545b7"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instance."
  type        = string
  default     = "ap-south-1a"
}

variable "iam_instance_profile" {
  description = "EC2 instance IAM instance profile name"
  type        = string
  default     = "pavan"
}

variable "key_name" {
  description = "EC2 instance key pair name"
  type        = string
  default     = "demo-key"
}

variable "security_groups" {
  description = "Security group for the EC2 instance"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
  default     = "subnet-0e41453c9b1028803"  # Update with a valid subnet ID
}

variable "tags" {
  type    = map(string)
  default = {
    Name        = "TF-Instance"
    Environment = "Dev"
  }
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "s3_bucket" {
  type    = string
  default = "pavanssonixbucket1"
}
