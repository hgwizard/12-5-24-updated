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

resource "aws_route_table_association" "tokyo_subnet_public_1a_association" {
  provider       = aws.tokyo
  subnet_id      = aws_subnet.tokyo_subnet_public_1a.id
  route_table_id = aws_route_table.tokyo_route_table.id
}

resource "aws_route_table_association" "tokyo_subnet_public_1a_1c_association" {
  provider       = aws.tokyo
  subnet_id      = aws_subnet.tokyo_subnet_public_1c.id
  route_table_id = aws_route_table.tokyo_route_table.id
}

resource "aws_route_table_association" "virginia_subnet_public_1a_association" {
  provider       = aws.virginia
  subnet_id      = aws_subnet.virginia_subnet_public_1a.id
  route_table_id = aws_route_table.virginia_route_table.id
}

resource "aws_route_table_association" "virginia_subnet_public_1b_association" {
  provider       = aws.virginia
  subnet_id      = aws_subnet.virginia_subnet_public_1b.id
  route_table_id = aws_route_table.virginia_route_table.id
}
