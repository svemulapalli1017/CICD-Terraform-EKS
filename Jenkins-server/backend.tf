terraform {
  backend "s3" {
    bucket = "eksjenkins101"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}
