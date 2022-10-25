resource "aws_s3_bucket" "this" {

  bucket = random_pet.bucket.id
  tags   = local.common_tags

}


# Ao invés de repetir o nome do arquivo, posso colocá-lo como no exemplo abaixo
# como um "locals" no arquivo local.tf, como no bloco após o exemplo abaixo.

# resource "aws_s3_bucket_object" "this" {
#
# bucket = aws_s3_bucket.this
#  key = "config/pessoa.json"
#  source = "pessoa.json"
#  etag = filemd5("pessoa.json") 
#}



# Enviar objeto ao bucket
resource "aws_s3_bucket_object" "this" {

  bucket = aws_s3_bucket.this.bucket
  key    = "config/${local.file_path}"
  source = local.file_path
  etag   = filemd5(local.file_path)

}