terraform {
  required_version = "v1.3.3"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }

  }

backend "s3" {

  bucket      = "tfstate-712488802180"
  key         = "dev/01-usando-remote-state/terraform.tfstate"
  region      = "us-east-1"
  profile     = "default"

}

}