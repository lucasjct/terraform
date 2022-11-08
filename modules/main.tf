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

  region  = "us-east-1"
  profile = "default"

}

resource "random_pet" "this" {
  length = 5

}

module "bucket" {
  source = "./s3_modules"
  name   = random_pet.this.id


  versioning = {
    "enabled" = "true"
  }

}

resource "random_pet" "website" {
  length = 5

}

module "website" {
  source = "./s3_modules"
  name   = random_pet.website.id
  files  = "${path.root}/website"
  acl = "public-read"  

  website = {
    index_document = "index.html"
    error_document = "error.html"
  }


  policy = <<EOT

{
      "Version" : "2012-10-17",

      "Statement" : [

        {

          "Sid" : "PublicRead",

          "Effect" : "Allow",

          "Principal" : {

            "AWS" : "*"

          },

          "Action" : [

            "s3:GetObject"

          ],

          "Resource" : [
            "arn:aws:s3:::${random_pet.website.id}/*"
                ]
            }

        ]
    } 
EOT
}     