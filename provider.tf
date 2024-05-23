terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  } 
  backend "s3" {
    bucket = "devajji.cloud-remote-state" 
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "daws-78s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}