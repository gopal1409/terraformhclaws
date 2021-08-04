terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.0"  #this is optionale but recommnded in production
    }
  }
}
#provider block
provider "aws" {
  region = var.aws_region
}