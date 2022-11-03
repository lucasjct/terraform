resource "aws_instance" "web" {

  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami           = var.ec2_ami
  instance_type = lookup(var.instance_type, var.env)
  subnet_id     = var.aws_insntace_subnet


  tags = merge(
    local.common_tags
    /**{
      Name    = format("BuildIn Functions", count.index + 1)
      Env     = format("instance %d", count.index + 1)
      Project = "Curso AWS com Terraform"
      Owner   = "Lucas Teixeira"
    } ***/
  )
}