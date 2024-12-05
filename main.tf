/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.77.0"
    }
  }
}

# provider "aws" {
#   alias  = "tokyo"
#   region = "ap-northeast-1"
# }

# provider "aws" {
#   alias  = "virginia"
#   region = "us-east-1"
# }

resource "aws_vpc" "tokyo_vpc" {
  provider   = aws.tokyo
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Tokyo VPC"
  }
}

resource "aws_vpc" "virginia_vpc" {
  provider   = aws.virginia
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "Virginia VPC"
  }
}

resource "aws_subnet" "tokyo_subnet_1" {
  provider          = aws.tokyo
  vpc_id            = aws_vpc.tokyo_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "Tokyo Subnet 1"
  }
}

resource "aws_subnet" "tokyo_subnet_2" {
  provider          = aws.tokyo
  vpc_id            = aws_vpc.tokyo_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "Tokyo Subnet 2"
  }
}

resource "aws_subnet" "virginia_subnet_1" {
  provider          = aws.virginia
  vpc_id            = aws_vpc.virginia_vpc.id
  cidr_block        = "10.1.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Virginia Subnet 1"
  }
}

resource "aws_subnet" "virginia_subnet_2" {
  provider          = aws.virginia
  vpc_id            = aws_vpc.virginia_vpc.id
  cidr_block        = "10.1.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Virginia Subnet 2"
  }
}

resource "aws_internet_gateway" "tokyo_igw" {
  provider = aws.tokyo
  vpc_id   = aws_vpc.tokyo_vpc.id

  tags = {
    Name = "Tokyo Internet Gateway"
  }
}

resource "aws_internet_gateway" "virginia_igw" {
  provider = aws.virginia
  vpc_id   = aws_vpc.virginia_vpc.id

  tags = {
    Name = "Virginia Internet Gateway"
  }
}

resource "aws_route_table" "tokyo_route_table" {
  provider = aws.tokyo
  vpc_id   = aws_vpc.tokyo_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tokyo_igw.id
  }

  tags = {
    Name = "Tokyo Route Table"
  }
}

resource "aws_route_table" "virginia_route_table" {
  provider = aws.virginia
  vpc_id   = aws_vpc.virginia_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.virginia_igw.id
  }

  tags = {
    Name = "Virginia Route Table"
  }
}

resource "aws_route_table_association" "tokyo_subnet_1_association" {
  provider       = aws.tokyo
  subnet_id      = aws_subnet.tokyo_subnet_1.id
  route_table_id = aws_route_table.tokyo_route_table.id
}

resource "aws_route_table_association" "tokyo_subnet_2_association" {
  provider       = aws.tokyo
  subnet_id      = aws_subnet.tokyo_subnet_2.id
  route_table_id = aws_route_table.tokyo_route_table.id
}

resource "aws_route_table_association" "virginia_subnet_1_association" {
  provider       = aws.virginia
  subnet_id      = aws_subnet.virginia_subnet_1.id
  route_table_id = aws_route_table.virginia_route_table.id
}

resource "aws_route_table_association" "virginia_subnet_2_association" {
  provider       = aws.virginia
  subnet_id      = aws_subnet.virginia_subnet_2.id
  route_table_id = aws_route_table.virginia_route_table.id
}

resource "aws_security_group" "tokyo_sg" {
  provider = aws.tokyo
  vpc_id   = aws_vpc.tokyo_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Tokyo Security Group"
  }
}

resource "aws_security_group" "virginia_sg" {
  provider = aws.virginia
  vpc_id   = aws_vpc.virginia_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Virginia Security Group"
  }
}
*/
