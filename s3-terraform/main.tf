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
  region = var.s3_region
}

resource "aws_s3_bucket" "test-bucket-flp" {
  bucket = var.s3_bucket
  acl    = var.acl_s3
  tags   = var.tags_s3

}
