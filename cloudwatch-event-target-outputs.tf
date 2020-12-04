output "cloudwatch_event_target_id" {
  value = aws_cloudwatch_event_target.lambda.id
}

output "cloudwatch_event_target_arn" {
  value = aws_cloudwatch_event_target.lambda.arn
}

