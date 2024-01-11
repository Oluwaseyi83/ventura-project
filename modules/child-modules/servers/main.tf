resource "aws_instance" "NAT_ALB_SERVER" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id[0]
  security_groups = [var.security_group_id]
  tags            = { Name = "NAT_ALB_SERVER" }
}

resource "aws_instance" "ALB_SERVER" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id[1]
  security_groups = [var.security_group_id]
  tags            = { Name = "ALB_SERVER" }
}
