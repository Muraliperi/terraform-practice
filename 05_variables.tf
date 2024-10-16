variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "variables_sub_cidr" {
  description = "CIDR block for the variable subnet"
  type = string
  default = "10.0.251.0/24"
}

variable "variables_availability_zone" {
  description = "Availability Zone used Variable Subnet"
  type = string
  default = "us-east-1a"
}

variable "variable_auto_launch_pub_ip" {
  description = "Auto launch Public IP for Variable Subnet"
  type = bool
  default = true
}

variable "variables_dev_environment" {
  description = "Variable name for Dev Environment"
  type = string
  default = "dev"
}

variable "variables_prod_environment" {
  description = "Variable name for Prod Environment"
  type = string
  default = "prod"
}

variable "variables_stage_environment" {
  description = "Variable name for Stage Environment"
  type = string
  default = "stage"
}

variable "variables_test_environment" {
  description = "Variable name for Test Environment"
  type = string
  default = "test"
}
