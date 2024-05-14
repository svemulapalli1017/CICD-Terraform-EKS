terraform {
  backend "s3" {
    bucket = "eksjenkins101"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}