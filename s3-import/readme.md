Com o comando `terraform import aws_s3_bucket.bucket  nome-do-bucket` podemos gerenciar com Terraform as configurações de um bucket que já está criado na nuvem.   

De modo geral, com o __import__  podemos gerenciar recursos que estão no cloud provider e que foram criados manualmente, tornando - os parte da IAC. 

Todo as configurações do bucket importado são salvas no arquivo JSON __terraform.tfstate__, tornado possível gerenciá-las no Terraform.

Para entender a sintaxe de cada recursso que podemos utilizar com o `terraform import`, precisamos verificar o final da documentação dos resgistry, como por exemplo, a documentação abaixo que serviu para esse exemplo do S3:  


[Terraform Registry S3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)