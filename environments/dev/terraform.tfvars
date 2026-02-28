aws_region   = "ap-south-1"
project_name = "ai-platform"
environment  = "dev"
vpc_cidr     = "10.0.0.0/16"
db_password  = "your-secure-password" # In production, use AWS Secrets Manager

tags = {
  Project     = "AIPlatform"
  Environment = "dev"
  ManagedBy   = "Terraform"
}
