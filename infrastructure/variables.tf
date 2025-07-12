# infrastructure/variables.tf

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "rails-app"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "railsapp"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "postgres"
}

variable "db_password" {
  description = "Database password"
  type        = string
  default     = "krihsnamoorthy123"
  # sensitive   = true
}

variable "ecs_task_cpu" {
  description = "ECS task CPU units"
  type        = string
  default     = "512"
}

variable "ecs_task_memory" {
  description = "ECS task memory"
  type        = string
  default     = "2048"
}

variable "ecs_service_desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 2
}

