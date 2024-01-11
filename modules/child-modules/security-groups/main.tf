resource "aws_security_group" "ventura-sg" {
  name        = var.ventura_sg
  description = "Example security group"
  vpc_id      = var.vpc_id
  tags        = { Name = "ventura_sg" }

  # Inbound rule for HTTPS
  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block[1]]
  }

  # Inbound rule for HTTP
  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block[1]]
  }

  # Inbound rule for SSH
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block[1]]
  }

  # Outbound rule to allow all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}