terraform {
  backend "s3" {
    bucket         = "my-s3bucket-for-tf-state"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
