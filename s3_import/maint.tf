terraform {

  required_version = "v1.3.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }

}

provider "aws" {

  region = "us-east-1"

}

resource "aws_s3_bucket" "bucket" {

  bucket = "aws-linux-tips"

  tags = {
    UpdatedAt   = "2022-10-22"
    Managedby = "Terraform"
    Owner = "Lucas Teixeira"
  }

}