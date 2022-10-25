# Quando temos repetição de muitos nome em cada arquivo, 
# pode utilizar um locals para centralizar as variaveis 
# que mais se repetem.


locals {

  file_path = "pessoa.json"

  common_tags = {

    Service   = "S3"
    Managedby = "Terraform"
  Owner = "Lucas Teixeira" }

}