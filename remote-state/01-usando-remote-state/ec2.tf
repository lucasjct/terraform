resource "aws_instance" "this" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t3.micro"
  subnet_id = "subnet-0b863a4badb9668e3"

  tags = {
    Name      = "Terraform"
    Managedby = "Terraform"
    UpdatedAt = "2022-10-26"
  }
}