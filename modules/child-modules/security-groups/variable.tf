variable "ventura_sg" {
  description = "Name of the AWS security group"
  type        = string
  default     = "my-security-group"
}

variable "https_port" {
  description = "Port for HTTPS traffic"
  type        = number
  default     = 443
}

variable "http_port" {
  description = "Port for HTTP traffic"
  type        = number
  default     = 80
}

variable "ssh_port" {
  description = "Port for SSH traffic"
  type        = number
  default     = 22
}

variable "sonarqube_port" {
  description = "Port for Sonarqube"
  type = number
  default = 9000
}

variable "vpc_id" {
    description = "Id of the vpc"
    type = string
    
}

variable "cidr_block" {
  description = "internet cidr block"
  type = list(string)
  default = ["0.0.0.0/0", "0.0.0.0/0"]
}