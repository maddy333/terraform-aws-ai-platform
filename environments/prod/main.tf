locals {
  common_tags = merge({
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }, var.tags)
}

module "vpc" {
  source             = "../../modules/vpc"
  project_name       = var.project_name
  environment        = var.environment
  vpc_cidr           = var.vpc_cidr
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets    = ["10.0.10.0/24", "10.0.11.0/24"]
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
  tags               = local.common_tags
}

module "eks" {
  source       = "../../modules/eks"
  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnet_ids
  tags         = local.common_tags
}

module "rds" {
  source       = "../../modules/rds"
  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnet_ids
  password     = var.db_password
  tags         = local.common_tags
}

module "redis" {
  source       = "../../modules/redis"
  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnet_ids
  tags         = local.common_tags
}

module "s3" {
  source       = "../../modules/s3"
  project_name = var.project_name
  environment  = var.environment
  bucket_name  = "assets"
  tags         = local.common_tags
}

module "alb" {
  source       = "../../modules/alb"
  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnet_ids
  tags         = local.common_tags
}

module "monitoring" {
  source       = "../../modules/monitoring"
  project_name = var.project_name
  environment  = var.environment
  tags         = local.common_tags
}
