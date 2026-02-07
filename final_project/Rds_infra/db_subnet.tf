resource "aws_db_subnet_group" "my_rds_subnet" {
    name =  "my_rds_subnet"
    subnet_ids = [
        "subnet-065b80b7f1561a361",
        "subnet-0994727e5a95caf79"
    ]
       
}
