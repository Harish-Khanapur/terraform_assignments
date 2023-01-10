variable "instance_ami" {
  type = string
  description = "AWS ami fetched from dataSource.tf"
}

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

variable "module_key_name" {
    type = string
    description = "key_pair file name"
}

variable "ec2_name" {
    type = string
    default = "ec2_instance" 
}

variable "module_subnet_id" {
    type=string
}