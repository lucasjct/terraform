terraform {

  required_version = "v1.3.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }
}

# provider é o bloco que irá nos conectar com a 'aws' ou outro provider


provider "aws" {

  region  = var.aws_region
  profile = var.aws_profile

}

# resource é o bloco que informamos o que será criado na aws quando executarmos 'terraform apply'
# resource possui um type e um name, o name é interno para o terraform não para refletir na cloud

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = var.instance_tags
}
