environment = "dev"
aws_region = "eu-north-1"

# RDS Variables
instance_class        = "db.t3.micro"
allocated_storage     = 20
max_allocated_storage = 100
username             = "admin"
password             = "DevPassword123"  # Change this in production

# EKS Variables
desired_nodes      = 2
max_nodes          = 2
min_nodes          = 2
node_instance_type = "m7i-flex.large"

# S3 Variables
bucket_name = "radison-hms-frontend-finalproject"
environment = "dev" 