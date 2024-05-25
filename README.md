# Terraform AWS Infrastructure

This repository contains a Terraform configuration for deploying a comprehensive AWS infrastructure, including VPC, subnets, EC2 instances, ALB, RDS, Auto Scaling, NAT Gateway, and other essential resources. Each resource is modularized for reusability and maintainability.

## Project Structure

```plaintext
.
├── main.tf
├── outputs.tf
├── provider.tf
├── variables.tf
├── modules
│   ├── alb
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── autoscaling_group
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── ec2
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── nat_gateway
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── private_subnet
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── public_subnet
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── rds
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── route53
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── security_group
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── subnet
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   └── vpc
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
└── README.md
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with appropriate permissions
- AWS CLI configured with your credentials

## Usage

1. **Clone the Repository:**

   ```sh
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Initialize Terraform:**

   ```sh
   terraform init
   ```

3. **Review and Modify Variables:**

   Adjust the variables in `variables.tf` as needed, or provide a `terraform.tfvars` file to customize the settings.

4. **Plan and Apply:**

   ```sh
   terraform plan
   terraform apply
   ```

5. **Output:**

   The output values, such as the ALB DNS name, RDS endpoint, etc., will be displayed after the apply step. These can also be found in the `outputs.tf` file.

## Module Descriptions

### VPC

The VPC module creates a Virtual Private Cloud with public and private subnets, route tables, and necessary configurations.

### Subnet (Public and Private)

These modules create public and private subnets within the specified VPC.

### NAT Gateway

The NAT Gateway module sets up a NAT Gateway for providing internet access to instances in private subnets.

### EC2

The EC2 module launches EC2 instances with specified AMI, instance type, and security groups.

### Auto Scaling Group

This module configures an Auto Scaling Group to manage the desired number of EC2 instances automatically.

### ALB (Application Load Balancer)

The ALB module creates an Application Load Balancer to distribute incoming traffic across multiple EC2 instances.

### RDS (Relational Database Service)

This module provisions an RDS instance with specified database engine, instance class, and storage options.

### Route53

The Route53 module sets up DNS records for the specified domain.

### Security Group

This module defines security groups to control inbound and outbound traffic for various resources.

