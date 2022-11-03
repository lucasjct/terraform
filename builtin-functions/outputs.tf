output "instance_public_ip" {
  value = aws_instance.web.*.public_ip

}

/**
output "instance_names" {

  value = join(",", aws_instance.web.*.tags.Name)

} *
**/