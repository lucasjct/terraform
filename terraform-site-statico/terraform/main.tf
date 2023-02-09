provider "aws" {

  region = var.aws_region

}


terraform {
  required_version = "v1.3.3"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
  }

  backend "s3" {

    bucket = "aws-linux-tips"
    key    = "terraform-test.tfstate"
    region = "us-east-1"

  }
}

resource "random_pet" "website" {

  length = 5

}