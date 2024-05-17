resource "aws_db_subnet_group" "example" {
  name       = "example-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "example-subnet-group"
  }
}

resource "aws_db_instance" "example" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  identifier           = var.db_name
  username             = var.username
  password             = var.password
  db_subnet_group_name = aws_db_subnet_group.example.name
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = var.db_name
  }
}
