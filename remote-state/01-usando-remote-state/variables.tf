variable "instance_image" {

  type        = string
  description = ""
  default     = "ami-08c40ec9ead489470"

}

variable "instance_machine" {

  type        = string
  description = ""
  default     = "t3.micro"
}

variable "instance_subnet" {
  type        = string
  description = ""
  default     = "subnet-0b863a4badb9668e3"

}

variable "instance_tags" {

  type        = map(string)
  description = ""
  default = {
    Name      = "Terraform-Test"
    Managedby = "Lucas Teixeira"
    UpdatedAt = "2022-10-27"
    Env       = "dev"
  }


}