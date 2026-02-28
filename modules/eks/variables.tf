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
  description = "The subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "eks_version" {
  description = "The Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "node_group_name" {
  description = "The name of the node group"
  type        = string
  default     = "main-node-group"
}

variable "instance_types" {
  description = "The instance types for the node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_size" {
  description = "The desired size of the node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum size of the node group"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "The minimum size of the node group"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}
