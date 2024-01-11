resource "aws_nat_gateway" "NAT_GW_1" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.Ventura-Prod-NAT-ALB-Subnet-1.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.IGW]
}


resource "aws_nat_gateway" "NAT_GW_2" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.Ventura-Prod-ALB-Subnet-2.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.IGW]
}