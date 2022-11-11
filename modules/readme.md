# Module block     

Com module blocks, podemos utilizar diversos recursos do Terraform, utilizando o module como um container. Nele podemos utilizar diversos resources juntos.    

[Documentação Module Block](https://developer.hashicorp.com/terraform/language/modules/syntax)   
 

Tutorial oficial para modules:  

[Modules - Tutoria](https://developer.hashicorp.com/terraform/tutorials/modules?utm_source=WEBSITE&utm_medium=WEB_IO&utm_offer=ARTICLE_PAGE&utm_content=DOCS)   


Neste exemplo do diretório, foi utilizado module para criar um site estático a partir do storage AWS S3.   

Os modulos nos arquivos ``main.tf` evocam os recursos necessário para criar o site estático no S3. 