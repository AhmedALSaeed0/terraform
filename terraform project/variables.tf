# variable "vpc_cidr" {
#   description = "CIDR block for the VPC"
#   type        = string
#   default     = "172.16.0.0/16"
# }

# variable "public_subnet_cidr" {
#   description = "CIDR block for the public subnet"
#   type        = string
#   default     = "172.16.1.0/24"
# }

# variable "private_subnet_cidr" {
#   description = "CIDR block for the private subnet"
#   type        = string
#   default     = "172.16.2.0/24"
# }

# variable "public_subnet_ipv6_cidr" {
#   description = "IPv6 CIDR block for the public subnet"
#   type        = string
#   default     = null
# }

# variable "private_subnet_ipv6_cidr" {
#   description = "IPv6 CIDR block for the private subnet"
#   type        = string
#   default     = null
# }

# variable "route53_zone_name" {
#   description = "Route 53 Hosted Zone Name"
#   type        = string
# }

# variable "ami" {
#   description = "AMI ID"
#   type        = string
# }

# variable "instance_type" {
#   description = "EC2 Instance Type"
#   type        = string
# }

# variable "instance_name" {
#   description = "Name tag for the EC2 Instance"
#   type        = string
#   default     = "example-instance"
# }

# variable "min_size" {
#   description = "Minimum size of the Auto Scaling Group"
#   type        = number
#   default     = 1
# }

# variable "max_size" {
#   description = "Maximum size of the Auto Scaling Group"
#   type        = number
#   default     = 3
# }

# variable "desired_capacity" {
#   description = "Desired capacity of the Auto Scaling Group"
#   type        = number
#   default     = 1
# }

# variable "allocated_storage" {
#   description = "The allocated storage in gigabytes"
#   type        = number
#   default     = 20
# }

# variable "storage_type" {
#   description = "The storage type"
#   type        = string
#   default     = "gp2"
# }

# variable "engine" {
#   description = "The database engine to use"
#   type        = string
#   default     = "mysql"
# }

# variable "engine_version" {
#   description = "The engine version to use"
#   type        = string
#   default     = "5.7"
# }

# variable "instance_class" {
#   description = "The instance type of the RDS instance"
#   type        = string
#   default     = "db.t2.micro"
# }

# variable "db_name" {
#   description = "The name of the database"
#   type        = string
#   default     = "exampledb"
# }

# variable "username" {
#   description = "The username for the database"
#   type        = string
# }

# variable "password" {
#   description = "The password for the database"
#   type        = string
#   sensitive   = true
# }


variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "172.16.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "172.16.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "172.16.2.0/24"
}

variable "route53_zone_name" {
  description = "Route 53 Hosted Zone Name"
  type        = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 Instance"
  type        = string
  default     = "example-instance"
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "storage_type" {
  description = "The storage type"
  type        = string
  default     = "gp2"
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = "5.7"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "exampledb"
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}
