terraform {
  backend "s3" {
    bucket         = "s3-infotech-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}