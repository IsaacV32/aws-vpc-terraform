project_name = "aws-vpc-terraform-v2"
environment  = "dev"

vpc_cidr = "10.0.0.0/16"

azs = ["ap-southeast-2a", "ap-southeast-2b"]

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
]

private_subnet_cidrs = [
  "10.0.101.0/24",
  "10.0.102.0/24",
]
