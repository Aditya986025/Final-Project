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
    source = "./Rds_infra"
    instance_class        = var.instance_class
    allocated_storage     = var.allocated_storage
    max_allocated_storage = var.max_allocated_storage
    username             = var.username
    password             = var.password
    
}

module "eks" {
    source = "./Eks_infra"
    desired_nodes      = var.desired_nodes
    max_nodes          = var.max_nodes
    min_nodes          = var.min_nodes
    node_instance_type = var.node_instance_type
}

module "s3" {
    source = "./S3_infra"
    
    bucket_name  = var.bucket_name
    environment  = var.environment
}