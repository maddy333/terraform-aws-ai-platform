output "db_instance_id" {
  description = "The ID of the DB instance"
  value       = aws_db_instance.main.id
}

output "db_endpoint" {
  description = "The connection endpoint for the DB instance"
  value       = aws_db_instance.main.endpoint
}

output "db_name" {
  description = "The name of the database"
  value       = aws_db_instance.main.db_name
}

output "db_security_group_id" {
  description = "The ID of the DB security group"
  value       = aws_security_group.db.id
}
