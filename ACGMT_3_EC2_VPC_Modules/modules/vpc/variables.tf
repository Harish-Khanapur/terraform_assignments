variable "vpc_cidr_block" {
    type = string
    description = "Please provide cidr block for the VPC"
}

variable "vpc_name" {
    type = string
    default = "ec2_vpc"
  
}

variable "subnet_cidr_block" {
    type = string
    description = "Please provide cidr block for the subnet"
}

variable "subnet_availability_zone" {
    type = string
    description = "Please provide availability zone for the subnet"
}

variable "subnet_name" {
    type = string
    default = "ec2_subnet"
}

variable "aws_internet_gateway_name" {
    type = string
    default = "ec2_gw"
}

variable "route_table_cidr_block" {
    type = string
    description = "Please provide cidr block for the route table or else the default is 0.0.0.0/0"
    default = "0.0.0.0/0"
}

variable "aws_route_table_name" {
    type = string
    default = "ec2_route_table"
}

