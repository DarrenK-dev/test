resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }

  tags = {
    "Name" = "route to internet - tutorial"
  }
}

resource "aws_route_table_association" "rt_ass_1" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "rt_ass_2" {
  subnet_id      = aws_subnet.subnet_2.id
  route_table_id = aws_route_table.rt.id
}