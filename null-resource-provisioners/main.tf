terraform {

    required_version = "v1.3.3"

    required_providers {

        aws = {
            source = "hashicorp/aws"
            version = "4.36.1"
        }
      
    }
  
}

resource "null_resource" "null" {

   provisioner "local-exec" {
    command = "echo hello"
    
   }

  provisioner "local-exec" {
    command = "rm -rf nodejs-app && mkdir nodejs-app && cd nodejs-app && npm init -y && npm install joi" 
  }  
}
