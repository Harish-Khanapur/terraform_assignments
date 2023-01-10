#creating VPC

resource "aws_vpc" "ec2_vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      "Name" = var.vpc_name
    }
  
}


#Creating subnet
 resource "aws_subnet" "ec2_subnet" {
    vpc_id = aws_vpc.ec2_vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.subnet_availability_zone
    tags = {
      "Name" = var.subnet_name
    }
   
 }


 #Creating intergate gateway

 resource "aws_internet_gateway" "ec2_gw" {
    vpc_id = aws_vpc.ec2_vpc.id
    tags = {
      "Name" = var.aws_internet_gateway_name
    }
   
 }

 #Creating route table

 resource "aws_route_table" "ec2_route_table" {
    vpc_id = aws_vpc.ec2_vpc.id

    route {
      cidr_block = var.route_table_cidr_block
      gateway_id = aws_internet_gateway.ec2_gw.id
    }

    tags = {
      "name" = "ec2_route_table"
    }
   
 }

 #creating route table association 

 resource "aws_route_table_association" "ec2_route_association" {
    subnet_id = aws_subnet.ec2_subnet.id
    route_table_id = aws_route_table.ec2_route_table.id
   
 }
