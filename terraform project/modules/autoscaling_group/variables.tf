variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "List of Subnet IDs"
  type        = list(string)
}

variable "launch_template_id" {
  description = "Launch Template ID"
  type        = string
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

variable "asg_name" {
  description = "Name tag for the Auto Scaling Group"
  type        = string
  default     = "example-asg"
}
