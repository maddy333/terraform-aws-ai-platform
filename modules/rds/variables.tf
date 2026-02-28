variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "The deployment environment (dev, staging, prod)"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs for the RDS cluster"
  type        = list(string)
}

variable "engine" {
  description = "The database engine"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "The engine version"
  type        = string
  default     = "15.4"
}

variable "instance_class" {
  description = "The instance class for the DB instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "ai_db"
}

variable "username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}
