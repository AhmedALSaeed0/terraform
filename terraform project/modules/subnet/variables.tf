variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}
###
variable "ipv6_cidr_block" {
  description = "IPv6 CIDR block for the subnet"
  type        = string
  default     = null
}

variable "subnet_name" {
  description = "Name tag for the subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Whether to map public IP on launch"
  type        = bool
  default     = false
}