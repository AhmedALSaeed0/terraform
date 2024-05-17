variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "security_group_name" {
  description = "Name tag for the Security Group"
  type        = string
  default     = "main-security-group"
}
