terraform {
  backend "s3" {
    bucket         = "my-ews-lakshmi"
    region         = "us-west-2"
    key            = "3090"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
