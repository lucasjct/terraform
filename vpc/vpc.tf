resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc-cdir
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "Test VPC"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "Test Internet Gateway"
  }
}


resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public-subnet-1-cidr
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public-subnet-2-cidr
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 2"
  }
}

