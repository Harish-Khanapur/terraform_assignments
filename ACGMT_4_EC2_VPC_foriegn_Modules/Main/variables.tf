
variable "instance_type" {
    type = string
    description = "Instance type"
    default = "t2.micro"
}

variable "region" {
    type=string
    default="us-east-1" 
}



variable "availability_zone" {
    type = string
    description = "availability zone"
    default = "us-east-1a"
}

variable "ec2_name" {
    type = string
    default = "ec2_instance" 
}

variable "key_name" {
    type = string
}

variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}

variable "vpc_cidr_block" {
    type = string
    description = "Please provide cidr block for the VPC"
}

variable "subnet_cidr_block" {
    type = string
    description = "Please provide cidr block for the subnet"
}

variable "subnet_availability_zone" {
    type = string
    description = "Please provide availability zone for the subnet"
}
