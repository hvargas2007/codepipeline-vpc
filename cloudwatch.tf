##CloudWatch log group Produccion [3 days retention]
resource "aws_cloudwatch_log_group" "vpc_log_group" { #tfsec:ignore:aws-cloudwatch-log-group-customer-key
  name              = "${var.name_prefix}-VpcLogGroup"
  retention_in_days = var.logs_retention

  tags = { Name = "${var.name_prefix}-vpc-Logs" }
}

