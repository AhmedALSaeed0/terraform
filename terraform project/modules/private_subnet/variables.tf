variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "ipv6_cidr_block" {
  description = "IPv6 CIDR block for the private subnet"
  type        = string
  default     = null
}

variable "subnet_name" {
  description = "Name tag for the private subnet"
  type        = string
  default     = "private-subnet"
}
