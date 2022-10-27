resource "aws_instance" "this" {

  ami           = var.instance_image
  instance_type = var.instance_machine
  subnet_id     = var.instance_subnet

  tags = var.instance_tags

}