output "vpc_id" {
  description = "ID of the VPC created by Terraform"
  value       = aws_vpc.main.id
}
output "public_subnet_ids" {
  description = "Public subnet IDs (multi-AZ)"
  value       = aws_subnet.public[*].id
}
output "private_subnet_ids" {
  description = "Private subnet IDs (multi-AZ)"
  value       = aws_subnet.private[*].id
}

output "vpc_flow_log_group_name" {
  description = "CloudWatch Log Group name for VPC Flow Logs"
  value       = aws_cloudwatch_log_group.vpc_flow_logs.name
}
