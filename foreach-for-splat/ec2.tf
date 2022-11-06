data "aws_ami" "ubuntu" {

  owners      = ["amazon"]
  most_recent = true
  name_regex  = "ubuntu"

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}

resource "aws_instance" "web" {

  # a iteração é feita dentro do "resource", passando os valores dos objetos de for_each para a variável
  # instance_type.

  for_each = {

    "web" = {
      name = "Web server"
      type = "t3.medium"
    }

    ci_cd = {
      name = "CI/CD server"
      type = "t3.micro"
    }
  }

  ami = data.aws_ami.ubuntu.id

  # os valores da interação serão passados para a variável abaixo:
  instance_type = lookup(each.value, "type", null)

  tags = {
    "Project" = "Terraform for_each"
    Name      = "${each.key}: ${lookup(each.value, "name", null)}"
    Lesson    = "Foreach, For, Splat"
  }
}