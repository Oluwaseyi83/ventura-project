variable "ami" {
  description = "expecting value for ami # Note ami must be from CentOS_7 us-east-1"
  type        = string
  default     = "ami-002070d43b0a4f171"
  sensitive   = false
}

variable "instance_type" {
  description = "instance types expected"
  type        = string
  default     = "t2.medium"
  sensitive   = false
}

variable "subnet_id" {
  description = "value"
  type        = list(string)
  default     = ["aws_subnet.Ventura-Prod-NAT-ALB-Subnet-1.id", "aws_subnet.Ventura-Prod-ALB-Subnet-2.id"]
  sensitive   = false

}

variable "security_group_id" {
  description = "security group id"
  type = string
  default = "aws_security_group.ventura-sg.id"
  
  
}