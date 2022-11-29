variable "vpc-cdir" {

  default     = "10.0.0.0/16"
  description = "VPC CDIR Block"
  type        = string
}

variable "public-subnet-1-cidr" {

  default     = "10.0.0.0/24"
  description = "Public subnet-1 CDIR Block"
  type        = string
}

variable "public-subnet-2-cidr" {

  default     = "10.0.1.0/24"
  description = "Public subnet-2 CDIR Block"
  type        = string
}