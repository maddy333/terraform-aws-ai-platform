variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "ai-platform"
}

variable "environment" {
  description = "The deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}
