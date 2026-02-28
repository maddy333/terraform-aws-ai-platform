terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "ai-platform/staging/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
