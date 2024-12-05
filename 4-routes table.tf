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

resource "aws_route_table" "hong_kong_route_table" {
  provider = aws.hong_kong
  vpc_id   = aws_vpc.hong_kong_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hong_kong_igw.id
  }

  tags = {
    Name = "hong_kong Route Table"
  }
}

resource "aws_route_table" "australia_route_table" {
  provider = aws.australia
  vpc_id   = aws_vpc.australia_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.australia_igw.id
  }

  tags = {
    Name = "australia Route Table"
  }
}

resource "aws_route_table" "california_route_table" {
  provider = aws.california
  vpc_id   = aws_vpc.california_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.california_igw.id
  }

  tags = {
    Name = "california Route Table"
  }
}


resource "aws_route_table" "london_route_table" {
  provider = aws.london
  vpc_id   = aws_vpc.london_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.london_igw.id
  }

  tags = {
    Name = "london Route Table"
  }
}

resource "aws_route_table" "sao_paulo_route_table" {
  provider = aws.sao_paulo
  vpc_id   = aws_vpc.sao_paulo_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sao_paulo_igw.id
  }

  tags = {
    Name = "sao_paulo Route Table"
  }
}

#tokyo 
resource "aws_route_table_association" "tokyo_subnet_public_1a_association" {
  provider       = aws.tokyo
  subnet_id      = aws_subnet.tokyo_subnet_public_1a.id
  route_table_id = aws_route_table.tokyo_route_table.id
}

resource "aws_route_table_association" "tokyo_subnet_public_1c_association" {
  provider       = aws.tokyo
  subnet_id      = aws_subnet.tokyo_subnet_public_1c.id
  route_table_id = aws_route_table.tokyo_route_table.id
}

#virginia

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


#hong_kong

resource "aws_route_table_association" "hong_kong_subnet_public_1a_association" {
  provider       = aws.hong_kong
  subnet_id      = aws_subnet.hong_kong_subnet_public_1a.id
  route_table_id = aws_route_table.hong_kong_route_table.id
}

resource "aws_route_table_association" "hong_kong_subnet_public_1b_association" {
  provider       = aws.hong_kong
  subnet_id      = aws_subnet.hong_kong_subnet_public_1b.id
  route_table_id = aws_route_table.hong_kong_route_table.id
}

#australia

resource "aws_route_table_association" "australia_subnet_public_1a_association" {
  provider       = aws.australia
  subnet_id      = aws_subnet.australia_subnet_public_1a.id
  route_table_id = aws_route_table.australia_route_table.id
}

resource "aws_route_table_association" "australia_subnet_public_1b_association" {
  provider       = aws.australia
  subnet_id      = aws_subnet.australia_subnet_public_1b.id
  route_table_id = aws_route_table.australia_route_table.id
}

#california

resource "aws_route_table_association" "california_subnet_public_1a_association" {
  provider       = aws.california
  subnet_id      = aws_subnet.california_subnet_public_1a.id
  route_table_id = aws_route_table.california_route_table.id
}

resource "aws_route_table_association" "california_subnet_public_1c_association" {
  provider       = aws.california
  subnet_id      = aws_subnet.california_subnet_public_1c.id
  route_table_id = aws_route_table.california_route_table.id
}

#london
resource "aws_route_table_association" "london_subnet_public_1a_association" {
  provider       = aws.london
  subnet_id      = aws_subnet.london_subnet_public_1a.id
  route_table_id = aws_route_table.london_route_table.id
}

resource "aws_route_table_association" "london_subnet_public_1b_association" {
  provider       = aws.london
  subnet_id      = aws_subnet.london_subnet_public_1b.id
  route_table_id = aws_route_table.london_route_table.id
}

#sao_paulo

resource "aws_route_table_association" "sao_paulo_subnet_public_1a_association" {
  provider       = aws.sao_paulo
  subnet_id      = aws_subnet.sao_paulo_subnet_public_1a.id
  route_table_id = aws_route_table.sao_paulo_route_table.id
}

resource "aws_route_table_association" "sao_paulo_subnet_public_1c_association" {
  provider       = aws.sao_paulo
  subnet_id      = aws_subnet.sao_paulo_subnet_public_1c.id
  route_table_id = aws_route_table.sao_paulo_route_table.id
}