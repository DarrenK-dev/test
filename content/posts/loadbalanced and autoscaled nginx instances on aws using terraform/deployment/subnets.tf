data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_1_cidr
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = {
    "Name" = "subnet_1 Public"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_2_cidr
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[1]

  tags = {
    "Name" = "subnet_2 Public"
  }
}