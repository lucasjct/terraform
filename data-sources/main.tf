provider "aws" {

  region  = "us-east-1"
  profile = "default"

}


data "aws_iam_policy" "adm_role" {

  name = "AdministratorAccess"

}

data "aws_region" "current" {}


output "policy" {

  value = data.aws_iam_policy.adm_role

}


output "region" {

  value = data.aws_region.current
}