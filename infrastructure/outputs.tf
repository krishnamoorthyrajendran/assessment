# infrastructure/outputs.tf

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "load_balancer_dns" {
  description = "Load balancer DNS name"
  value       = aws_lb.main.dns_name
}

output "load_balancer_url" {
  description = "Load balancer URL"
  value       = "http://${aws_lb.main.dns_name}"
}

output "ecr_repository_rails_url" {
  description = "ECR repository URL for Rails app"
  value       = aws_ecr_repository.rails_app.repository_url
}

output "ecr_repository_nginx_url" {
  description = "ECR repository URL for Nginx"
  value       = aws_ecr_repository.nginx.repository_url
}

output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.postgres.endpoint
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.app_storage.bucket
}

output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  description = "ECS service name"
  value       = aws_ecs_service.app.name
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public[*].id
}