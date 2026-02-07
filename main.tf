terraform {
    backend "s3" {
        bucket = "radison-infra-first-bucket"
        region = "eu-north-1"
        key = "terraform.tfstate"
    }
}

provider "aws" {
    region = var.aws_region
}

module "rds" {
    source = "./final_project/Rds_infra/"
    instance_class        = var.instance_class
    allocated_storage     = var.allocated_storage
    max_allocated_storage = var.max_allocated_storage
    username             = var.username
    password             = var.password
    
}

module "eks" {
    source = "./final_project/Eks_infra/"
    desired_size      = var.desired_size
    max_size       = var.max_size
    min_size          = var.min_size
    instance_type = var.instance_type
}

module "s3" {
    source = "./final_project/S3_infra/"
    
    bucket_name  = var.bucket_name
    environment  = var.environment
}
