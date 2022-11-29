# Criar VPC
Todos os passos abaixo que são feito no console, são reproduzidos no Terraform.
- Escolher faixa de IPV4
- Faixa de rede classe 10


## Criar Subnets
Escolher zonas de disponibilidade, disponibilizando 250 endereços para as subnetes dentro de cada zona. Para isso, utilizamos 10.0.1.0/24, variando dentro de cada zona de disponibilidade, por exemplo, east-virginia-2: 10.0.2.0/24, assim sucessivamente.


## Criar internet Gateway para liberar acesso para a internet e anexar na VPC.

Após configurar o internet gateway, devo habilitar DNS Hostnames e DNS Resolution.

## Route Table
Próximo passo é configurar as rotas de navegação que vem de fora e vem de dentro. Permitir que requisições que venham da internet acessem o Intenet Gateway.


## Security Group
Próximo passo é configurar o security group, definirá quais máquinas podem se comunicar e quais não podem.

Cada grupo de segurança deve ser criado especificamente para uma VPC. Sempre evitar liberar todo o tráfego. Liberar apenas as portas necessárias. Exemplo: liberar apenas a porta do mysql para o ip que consome o serviço.

Podemos criar relações entre os grupos de segurança. Fazemos isso através das regras de entrada. Para isso, por exemplo, podemos adicionar em source nas regras de entrada do banco de dados, o grupo de segurança da API. Dessa forma, permitimos que ela se comunique c/ a porta do MYSQL/AURORA