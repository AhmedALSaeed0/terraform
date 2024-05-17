# resource "aws_subnet" "main" {
#   vpc_id            = var.vpc_id
#   cidr_block        = var.cidr_block
#   ipv6_cidr_block   = var.ipv6_cidr_block
#   map_public_ip_on_launch = contains(["public-subnet"], var.subnet_name)

#   tags = {
#     Name = var.subnet_name
#   }
# }

resource "aws_subnet" "main" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    Name = var.subnet_name
  }
}
