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


variable "private-subnet-1-cidr" {

  default     = "10.0.2.0/24"
  description = "Private subnet-2 CDIR Block"
  type        = string
}

variable "private-subnet-2-cidr" {

  default     = "10.0.3.0/24"
  description = "Private subnet-2 CDIR Block"
  type        = string
}

variable "private-subnet-3-cidr" {

  default     = "10.0.4.0/24"
  description = "Private subnet-3 CDIR Block"
  type        = string
}


variable "private-subnet-4-cidr" {

  default     = "10.0.5.0/24"
  description = "Private subnet-4 CDIR Block"
  type        = string
}