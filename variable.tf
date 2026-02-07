variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

# RDS Variables
variable "instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "allocated_storage" {
  description = "RDS allocated storage in GB"
  type        = number
}

variable "max_allocated_storage" {
  description = "RDS maximum allocated storage in GB"
  type        = number
}

variable "username" {
  description = "RDS master username"
  type        = string
}

variable "password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}

# EKS Variables

variable "desired_nodes" {
  description = "Desired number of EKS nodes"
  type        = number
}

variable "max_nodes" {
  description = "Maximum number of EKS nodes"
  type        = number
}

variable "min_nodes" {
  description = "Minimum number of EKS nodes"
  type        = number
}

variable "node_instance_type" {
  description = "EKS node instance type"
  type        = string
}

# S3 Variables
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag for S3 bucket"
  type        = string
} 