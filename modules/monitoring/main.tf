locals {
  common_tags = merge({
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }, var.tags)
}

resource "aws_cloudwatch_log_group" "main" {
  name              = "/aws/${var.project_name}/${var.environment}/logs"
  retention_in_days = var.retention_in_days

  tags = local.common_tags
}

resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${var.project_name}-${var.environment}-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "text"
        x      = 0
        y      = 0
        width  = 24
        height = 3
        properties = {
          markdown = "# ${var.project_name} - ${var.environment} Monitoring"
        }
      },
      {
        type   = "metric"
        x      = 0
        y      = 3
        width  = 12
        height = 6
        properties = {
          metrics = [
            ["AWS/EKS", "cluster_failed_node_count", "ClusterName", "${var.project_name}-${var.environment}-eks-cluster"]
          ]
          period = 300
          stat   = "Average"
          region = "ap-south-1"
          title  = "EKS Failed Nodes"
        }
      }
    ]
  })
}
