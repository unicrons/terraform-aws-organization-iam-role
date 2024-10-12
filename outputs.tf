output "stack_set_arn" {
  value       = aws_cloudformation_stack_set.this.arn
  description = "CloudFormation StackSet ARN."
}

output "stack_set_name" {
  value       = aws_cloudformation_stack_set.this.id
  description = "CloudFormation StackSet name."
}

output "stack_set_id" {
  value       = aws_cloudformation_stack_set.this.stack_set_id
  description = "CloudFormation StackSet Id."
}

output "stack_instance_summaries" {
  value       = aws_cloudformation_stack_instances.this.stack_instance_summaries
  description = "List of stack instances created from an organizational unit deployment target."
}
