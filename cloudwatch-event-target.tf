resource "aws_cloudwatch_event_target" "lambda" {
  target_id = var.name
  //rule = aws_cloudwatch_event_rule.scheduler.name
  rule = var.rule_name
  arn = var.target_arn
}

