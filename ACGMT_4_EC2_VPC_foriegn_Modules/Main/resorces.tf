module "vpc_module" {
    source = "/Users/harish/Downloads/File_Manager/Projects/Git Repo/terraform_assignments_private/ACGMT_4_EC2_VPC_foriegn_Modules/modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    subnet_cidr_block =var.subnet_cidr_block
    subnet_availability_zone = var.subnet_availability_zone
    
}


module "ec2_module" {
    source = "/Users/harish/Downloads/File_Manager/Projects/Git Repo/terraform_assignments_private/ACGMT_4_EC2_VPC_foriegn_Modules/modules/ec2"
    instance_ami= data.aws_ami.data_ami.id
    instance_type = var.instance_type
    availability_zone = var.availability_zone
    module_key_name = var.key_name
    ec2_name = var.ec2_name
    module_subnet_id =module.vpc_module.op_vpc_subnet_id  
    }