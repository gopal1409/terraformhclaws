terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.0"  #this is optionale but recommnded in production
    }
  }
  backend "s3" {
    bucket = "terraform-state-gopal"
    key = "dev/terraform.tfstate"
    region = "ap-northeast-2"
  }
}
#provider block
provider "aws" {
  region = var.aws_region
}