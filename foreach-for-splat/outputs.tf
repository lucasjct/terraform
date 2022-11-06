output "get_extensions" {

  value = local.file_extensions

}

output "aws_instances_arn" {

  value = [for key, value in aws_instance.web : value.arn]

}

output "instance_names" {

  value = { for key, value in aws_instance.web : key => value.tags.Name }

}

output "file_upper" {

  value = local.file_extensions_upper
  
}

output "privete_ips" {
  value = [for o in local.ips : o.private]
  
}

# nota: exemplo de splat operators
output "public_ips" {
  value = local.ips[*].public
  
}