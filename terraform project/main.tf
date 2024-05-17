module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "public_subnet" {
  source     = "./modules/subnet"
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.public_subnet_cidr
  subnet_name = "public-subnet"
}

module "private_subnet" {
  source     = "./modules/subnet"
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.private_subnet_cidr
  subnet_name = "private-subnet"
}

module "nat_gateway" {
  source = "./modules/nat_gateway"
  public_subnet_id = module.public_subnet.subnet_id
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  vpc_id            = module.vpc.vpc_id
  subnet_id         = module.public_subnet.subnet_id
  security_group_id = module.security_group.security_group_id
  ami               = var.ami
  instance_type     = var.instance_type
  instance_name     = var.instance_name
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = [module.public_subnet.subnet_id]
  security_group_id = module.security_group.security_group_id
}

module "autoscaling_group" {
  source             = "./modules/autoscaling_group"
  subnet_ids         = [module.public_subnet.subnet_id]
  launch_template_id = module.ec2.launch_template_id
  min_size           = var.min_size
  max_size           = var.max_size
  desired_capacity   = var.desired_capacity
  vpc_id             = module.vpc.vpc_id
}

module "rds" {
  source            = "./modules/rds"
  subnet_ids        = [module.private_subnet.subnet_id]
  security_group_id = module.security_group.security_group_id
  allocated_storage = var.allocated_storage
  storage_type      = var.storage_type
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  db_name           = var.db_name
  username          = var.username
  password          = var.password
  vpc_id            = module.vpc.vpc_id
}

module "route53" {
  source     = "./modules/route53"
  zone_id    = data.aws_route53_zone.main.zone_id
  alb_dns    = module.alb.dns_name
  alb_zone_id = data.aws_route53_zone.main.id
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

data "aws_route53_zone" "main" {
  name = var.route53_zone_name
}
