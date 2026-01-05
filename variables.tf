variable "region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "ap-southeast-2"
}
variable "project_name" {
  description = "Project name used for resource naming/tagging"
  type        = string
  default     = "aws-vpc-terraform"
}

variable "environment" {
  description = "Environment name (e.g. dev, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "extra_tags" {
  description = "Extra tags applied to all resources"
  type        = map(string)
  default     = {}
}

variable "azs" {
  description = "Availability Zones to use"
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b"]
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs (must match azs length)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
