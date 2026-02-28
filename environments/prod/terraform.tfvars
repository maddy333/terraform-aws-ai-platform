aws_region   = "ap-south-1"
project_name = "ai-platform"
environment  = "prod"
vpc_cidr     = "10.2.0.0/16"
db_password  = "your-secure-prod-password"

tags = {
  Project     = "AIPlatform"
  Environment = "prod"
  ManagedBy   = "Terraform"
}
