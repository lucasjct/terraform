variable "env" {
}

variable "aws_region" {

  type        = string
  description = ""
  default     = "us-east-1"

}

variable "ec2_ami" {

  type        = string
  description = ""
  default     = "ami-08c40ec9ead489470"

  validation {
    condition     = length(var.ec2_ami) > 4 && substr(var.ec2_ami, 0, 4) == "ami-"
    error_message = "The ec2_ami value must be a valid AMI id, string with \"ami-\"."
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })

  description = ""

  default = {
    dev  = 1
    prod = 2
  }

}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })

  description = ""
  default = {
    dev  = "t3.micro"
    prod = "t3.meadium"
  }
}

variable "aws_insntace_subnet" {
  type        = string
  description = ""
  default     = "subnet-0b863a4badb9668e3"

}