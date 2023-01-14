terraform {
  backend "s3" {
    bucket         = "infotech-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "infotech-backend"
  }
}