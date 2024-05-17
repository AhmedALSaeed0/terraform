resource "aws_launch_template" "example" {
  name_prefix   = var.instance_name
  image_id      = var.ami
  instance_type = var.instance_type

  network_interfaces {
    security_groups = [var.security_group_id]
    subnet_id       = var.subnet_id
  }
}
