variable "name" {

  type        = string
  description = "bucket name"


}

variable "acl" {

  type        = string
  description = ""
  default     = "private"

}

variable "policy" {
  type        = string
  description = ""
  default     = null

}


variable "tags" {

  type        = map(string)
  description = ""

  default = {

    UpdatedAt = "2022-10-22"
    Managedby = "Terraform"
    Owner     = "Lucas Teixeira"
  }
}

variable "website" {

  description = "containg website configuration"
  type        = map(string)
  default     = {}
}

variable "key_prefix" {
  type    = string
  default = ""

}

variable "files" {

  type    = string
  default = ""

}

variable "versioning" {

  description = "containg website configuration"
  type        = map(string)
  default     = {}
}
