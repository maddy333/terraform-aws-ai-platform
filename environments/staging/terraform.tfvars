aws_region   = "ap-south-1"
project_name = "ai-platform"
environment  = "staging"
vpc_cidr     = "10.1.0.0/16"
db_password  = "your-secure-staging-password"

tags = {
  Project     = "AIPlatform"
  Environment = "staging"
  ManagedBy   = "Terraform"
}
