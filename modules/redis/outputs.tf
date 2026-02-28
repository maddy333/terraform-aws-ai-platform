output "cluster_id" {
  description = "The ID of the Redis cluster"
  value       = aws_elasticache_cluster.main.id
}

output "cluster_address" {
  description = "The endpoint of the Redis cluster"
  value       = aws_elasticache_cluster.main.cache_nodes[0].address
}

output "cluster_port" {
  description = "The port of the Redis cluster"
  value       = aws_elasticache_cluster.main.port
}

output "redis_security_group_id" {
  description = "The ID of the Redis security group"
  value       = aws_security_group.redis.id
}
