# variable "vpc_cidr" {
#   description = "CIDR block for the VPC"
#   type        = string
# }

# variable "private_subnet_cidrs" {
#   description = "List of CIDR blocks for the private subnets"
#   type        = list(string)
# }

# variable "public_subnet_cidrs" {
#   description = "List of CIDR blocks for the public subnets"
#   type        = list(string)
# }

# variable "vpc_name" {
#   description = "Name tag for the VPC"
#   type        = string
#   default     = "main-vpc"
# }

# variable "private_subnet_name" {
#   description = "Name tag for the private subnets"
#   type        = string
#   default     = "private-subnet"
# }

# variable "public_subnet_name" {
#   description = "Name tag for the public subnets"
#   type        = string
#   default     = "public-subnet"
# }


variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "main-vpc"
}
