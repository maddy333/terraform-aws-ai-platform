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
  description = "The subnet IDs for the ALB"
  type        = list(string)
}

variable "port" {
  description = "The port for the ALB"
  type        = number
  default     = 80
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}
