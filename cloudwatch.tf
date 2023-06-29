##CloudWatch log group Produccion [3 days retention]
resource "aws_cloudwatch_log_group" "vpc_log_group" {
  name              = "${var.name_prefix}-VpcLogGroup"
  retention_in_days = var.logs_retention

  #tfsec:ignore:aws-cloudwatch-log-group-customer-key  

  tags = { Name = "${var.name_prefix}-vpc-Logs" }
}

