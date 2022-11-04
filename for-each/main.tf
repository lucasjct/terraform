variable "teste" {

  default = {
    arquivo  = "primeiro arquivo"
    arquivo2 = "Conteúdo do segundo arquio"
  }

}

resource "local_sensitive_file" "for_each" {

  for_each = var.teste
  filename = each.key
  content  = "content"

}