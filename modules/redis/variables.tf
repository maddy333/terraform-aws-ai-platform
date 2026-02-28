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
  description = "The subnet IDs for the Redis cluster"
  type        = list(string)
}

variable "node_type" {
  description = "The node type for the Redis cluster"
  type        = string
  default     = "cache.t3.micro"
}

variable "num_cache_nodes" {
  description = "The number of cache nodes in the cluster"
  type        = number
  default     = 1
}

variable "port" {
  description = "The port for the Redis cluster"
  type        = number
  default     = 6379
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}
