variable "cidr_block" {
  description = "vpc-and_internet_cidr_block"
  type        = list(string)
  default     = ["10.0.0.0/16", "0.0.0.0/0"]
  sensitive   = false
}

variable "private_subnet_cidr" {
  description = "private subnet cidr"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24", "10.0.14.0/24", "10.0.15.0/24", "10.0.16.0/24"]
  sensitive   = false
}

variable "public_subnet_cidr" {
  description = "public subnet cidr"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  sensitive   = false
}

variable "subnet_id" {
  description = "value"
  type        = list(string)
  default     = ["aws_subnet.Ventura-Prod-NAT-ALB-Subnet-1.id", "aws_subnet.Ventura-Prod-ALB-Subnet-2.id"]
  sensitive   = false

}

variable "availability_zones" {
  description = "all availabity zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
  sensitive   = false
}

variable "regions" {
  description = "all regions"
  type        = list(string)
  default     = ["us-east-1", "us-west-2", "ca-central" ]
  sensitive   = false
}