variable "iam_name_user" {

  type        = string
  description = ""
  default     = "user.test"

}

variable "path_iam" {

  type        = string
  description = ""
  default     = "/"

}

variable "iam_destroy" {
  type        = bool
  description = ""
  default     = true

}

variable "login_iam" {
  type        = string
  description = ""
  default     = "keybase:terraform"

}

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
