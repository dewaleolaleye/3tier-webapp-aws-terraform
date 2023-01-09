terraform {
  backend "s3" {
    bucket         = "s3-infotech-terraform-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    versioning = {
      enabled = true
    }
  }
}