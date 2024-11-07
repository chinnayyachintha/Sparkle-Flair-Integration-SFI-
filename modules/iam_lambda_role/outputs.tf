# Output the ARN of the IAM role for Lambda execution
output "lambda_role_arn" {
    description = "The ARN of the IAM role for Lambda execution"
    value       = aws_iam_role.lambda_exec.arn
}

# Output the ARN of the IAM policy for Lambda execution
output "lambda_policy_arn" {
    description = "The ARN of the IAM policy for Lambda execution"
    value       = aws_iam_policy.lambda_execution_policy.arn
}