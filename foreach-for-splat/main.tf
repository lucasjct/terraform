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

  region  = var.aws_region
  profile = var.aws_profile

}