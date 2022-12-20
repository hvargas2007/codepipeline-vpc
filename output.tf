output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "VPC ID"
}

output "private_subnet_id" {
  value       = values(aws_subnet.private)[*].id
  description = "Private Subnets ID ecs"
}