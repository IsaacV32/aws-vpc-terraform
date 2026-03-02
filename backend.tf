terraform {
  backend "s3" {
    bucket         = "isaacv32-terraform-state-2026"
    key            = "project-1-vpc/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}