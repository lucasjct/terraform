locals {
  instance_number = lookup(var.instance_number, var.env)

  file_ext    = "zip"
  object_name = "arquivo-gerado-pelo-template"

  common_tags = {
    "Owner" = "Lucas Teixeira"
    "Year"  = 2022
  }
}