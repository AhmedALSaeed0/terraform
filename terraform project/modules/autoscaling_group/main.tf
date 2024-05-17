resource "aws_autoscaling_group" "example" {
  launch_template {
    id = var.launch_template_id
  }

  vpc_zone_identifier = var.subnet_ids
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity

  tag {
    key                 = "Name"
    value               = var.asg_name
    propagate_at_launch = true
  }
}
