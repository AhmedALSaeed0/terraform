resource "aws_subnet" "public" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  ipv6_cidr_block   = var.ipv6_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name
  }
}
