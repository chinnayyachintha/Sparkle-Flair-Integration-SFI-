# Output the ARN of the tokenize Lambda function
output "tokenize_lambda_function_arn" {
  value = aws_lambda_function.tokenize.arn
}

# Output the ARN of the decrypt Lambda function
output "decrypt_lambda_function_arn" {
  value = aws_lambda_function.decrypt.arn
}

# Output the ARN of the apply_rules Lambda function
output "apply_rules_lambda_function_arn" {
  value = aws_lambda_function.apply_rules.arn
}

# Output the ARN of the encrypt Lambda function
output "encrypt_lambda_function_arn" {
  value = aws_lambda_function.encrypt.arn
}

# Output the ARN of the post_request Lambda function
output "post_request_lambda_function_arn" {
  value = aws_lambda_function.post_request.arn
}

# Output the ARN of the payment_process Lambda function
output "payment_process_lambda_function_arn" {
  value = aws_lambda_function.payment_process.arn
}

# Output the ARN of the post_response Lambda function
output "post_response_lambda_function_arn" {
  value = aws_lambda_function.post_response.arn
}