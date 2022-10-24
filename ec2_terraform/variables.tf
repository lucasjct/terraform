variable "aws_region" {

  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {

  type        = string
  description = ""
  default     = "default"

}

variable "instance_ami" {

  type        = string
  description = ""
  default     = "ami-08c40ec9ead489470"

}

variable "instance_type" {

  type        = string
  description = ""
  default     = "t3.micro"

}

variable "subnet_id" {
  type        = string
  description = ""
  default     = "subnet-0b863a4badb9668e3"

}

variable "instance_tags" {

  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "AWS com Terraform"
  }

}
