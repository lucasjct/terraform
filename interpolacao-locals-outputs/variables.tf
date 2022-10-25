variable "aws_profile" {

  type        = string
  description = ""
  default     = "default"

}

variable "aws_region" {

  type        = string
  description = ""
  default     = "us-east-1"

}

variable "tags" {

  type        = map(string)
  description = ""
  default = {
    Service   = "S3"
    Managedby = "Terraform"
    Owner     = "Lucas Teixeira"
  }

}