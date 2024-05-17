# # modules/rds/output.tf
# output "rds_instance_id" {
#   value = aws_db_instance.rds.id
# }

# output "rds_instance_address" {
#   value = aws_db_instance.rds.address
# }

# output "rds_instance_port" {
#   value = aws_db_instance.rds.port
# }


# modules/rds/output.tf
output "db_instance_endpoint" {
  value = aws_db_instance.example.endpoint
}
