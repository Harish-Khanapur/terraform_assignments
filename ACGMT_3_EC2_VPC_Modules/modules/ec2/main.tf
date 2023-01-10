resource "aws_instance" "ec2_instance" {
    
    ami = var.instance_ami
    instance_type = var.instance_type
    availability_zone = var.availability_zone
    key_name = var.module_key_name
    subnet_id = var.module_subnet_id

    tags = {
      "Name" = var.ec2_name
    }

}