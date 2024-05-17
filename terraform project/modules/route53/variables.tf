variable "zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
}

variable "alb_dns" {
  description = "DNS name of the ALB"
  type        = string
}

variable "alb_zone_id" {
  description = "Zone ID of the ALB"
  type        = string
}
