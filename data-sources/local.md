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

  profile = "default"
  region  = "us-east-1"

}