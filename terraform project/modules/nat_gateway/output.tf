# modules/nat_gateway/output.tf
output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}
