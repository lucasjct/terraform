resource "local_file" "count" {

  # count permite repetir o bloco ao invés de precisar criar manualmente
  # blocos repetidos
  count = 4

  filename = "./files/arquivo_${count.index}"
  content  = "esse arquivo é o ${count.index}"
  
}