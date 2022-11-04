# Remote State   

Com __remote state__ podemos enviar informações do terraform para um repositótrio para trabalhar com controle de versão. No caso. neste esxemplo foi utilizado AWS S3. Com isso, podemos baixar o arquivo terraform.state atualizado com as últimas modificações para trabalharmos com a versão atualizada.

Para fazer o versionamento, precisou ser configurado o bloco __backend__, no qual gerencia os dados que serão trabalhados no projeto do Terraform. Para enviar os arquivos ao repositório, precisamos do backend configurado, contudo, para obter as intformações, devemos deixar o bloco backend vazio e, ao subir ao inicializar o projeto com a versão remota, precisamos executar o seguinte comando:   

`terraform init -backend=true -backend-config="backend.hcl`   

Esse comando passa como parâmetro as configurações do backend contidas no arquivo `backend.hcl`.  