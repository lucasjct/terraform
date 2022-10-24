variable "s3_region" {

  type        = string
  description = ""
  default     = "us-east-1"

}

variable "s3_bucket" {

  type        = string
  description = ""
  default     = "test-bucket-tf-teste-flp-br2317"

}

variable "acl_s3" {
  type        = string
  description = ""
  default     = "private"

}

variable "tags_s3" {
  type        = map(string)
  description = ""
  default = {
    Name        = "Ponte-Bucket"
    Environment = "DEV"
    Managedby   = "Terraform"
    Owner       = "Lucas Teixeira"
    UpdatedAt   = "2022-10-22"

  }

}
