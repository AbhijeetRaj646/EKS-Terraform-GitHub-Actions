terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
required_version = ">= 1.9.3, < 2.0.0"
    }
  }
  backend "s3" {
    bucket         = "abhi-ews-baket1122"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
