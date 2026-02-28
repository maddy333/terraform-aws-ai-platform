output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "eks_cluster_id" {
  description = "The ID of the EKS cluster"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "db_endpoint" {
  description = "The connection endpoint for the DB instance"
  value       = module.rds.db_endpoint
}

output "redis_endpoint" {
  description = "The endpoint of the Redis cluster"
  value       = module.redis.cluster_address
}

output "s3_bucket_id" {
  description = "The ID of the S3 bucket"
  value       = module.s3.bucket_id
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = module.alb.alb_dns_name
}

output "monitoring_dashboard_arn" {
  description = "The ARN of the Monitoring dashboard"
  value       = module.monitoring.dashboard_arn
}
