#Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}
# provider
provider "aws" {
  region = "us-east-2"
}
