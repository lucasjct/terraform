terraform {
  required_version = "v1.3.3"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }

  }
}

# data receberá os dados do repositório

data "aws_caller_identity" "current" {}


# cria serviços

resource "aws_s3_bucket" "remote-state" {

  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

versioning {
    enabled = true
  }

}

output "remote_state_bucket" {

  value = aws_s3_bucket.remote-state.bucket

}

output "remote_state_bucket_arn" {

  value = aws_s3_bucket.remote-state.arn

}