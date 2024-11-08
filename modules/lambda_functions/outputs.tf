# request_handler_payment lambda_function outputs
# Lambda Function ARN:
output "request_handler_lambda_arn" {
  value = aws_lambda_function.request_handler_payment.arn
  description = "The ARN of the Lambda function that handles requests from the New Flair Website."
}

# Lambda Function Name:
output "request_handler_lambda_name" {
  value = aws_lambda_function.request_handler_payment.function_name
  description = "The name of the Lambda function that routes reservation requests through the Flair Payment Gateway."
}

# flair_payment_gateway lambda_function outputs
# Tokenize Lambda Function:
output "tokenize_lambda_arn" {
  value = aws_lambda_function.tokenize_payment.arn
  description = "The ARN of the Lambda function for tokenizing payment data."
}

output "tokenize_lambda_name" {
  value = aws_lambda_function.tokenize_payment.function_name
  description = "The name of the Lambda function for tokenizing payment data."
}

# Decrypt Lambda Function:
output "decrypt_lambda_arn" {
  value = aws_lambda_function.decrypt_payment.arn
  description = "The ARN of the Lambda function for decrypting payment data."
}

output "decrypt_lambda_name" {
  value = aws_lambda_function.decrypt_payment.function_name
  description = "The name of the Lambda function for decrypting payment data."
}

# Apply Rules Lambda Function:
output "apply_rules_lambda_arn" {
  value = aws_lambda_function.business_appply_rules.arn
  description = "The ARN of the Lambda function for applying business rules."
}

output "apply_rules_lambda_name" {
  value = aws_lambda_function.business_appply_rules.function_name
  description = "The name of the Lambda function for applying business rules."
}

# Encrypt Lambda Function:
output "encrypt_lambda_arn" {
  value = aws_lambda_function.encrypt_payment.arn
  description = "The ARN of the Lambda function for encrypting payment data."
}

output "encrypt_lambda_name" {
  value = aws_lambda_function.encrypt_payment.function_name
  description = "The name of the Lambda function for encrypting payment data."
}

# Post Lambda Function:
output "post_lambda_arn" {
  value = aws_lambda_function.post_request_payment.arn
  description = "The ARN of the Lambda function for posting data to the payment processor."
}

output "post_lambda_name" {
  value = aws_lambda_function.post_request_payment.function_name
  description = "The name of the Lambda function for posting data to the payment processor."
}


# payment_processor lambda_function outputs
# Process Payment Lambda Function:
output "process_payment_lambda_arn" {
  value = aws_lambda_function.process_payment.arn
  description = "The ARN of the Lambda function for processing payments."
}

output "process_payment_lambda_name" {
  value = aws_lambda_function.process_payment.function_name
  description = "The name of the Lambda function for processing payments."
}

# Post Response Lambda Function:
output "post_response_lambda_arn" {
  value = aws_lambda_function.post_response_payment.arn
  description = "The ARN of the Lambda function for posting payment responses."
}

output "post_response_lambda_name" {
  value = aws_lambda_function.post_response_payment.function_name
  description = "The name of the Lambda function for posting payment responses."
}

# flair_payment_gateway_response lambda_function outputs
# Decrypt Response Payment Lambda:
output "decrypt_response_payment_lambda_arn" {
  value       = aws_lambda_function.decrypt_response_payment.arn
  description = "The ARN of the Lambda function for decrypting payment responses."
}

output "decrypt_response_payment_lambda_name" {
  value       = aws_lambda_function.decrypt_response_payment.function_name
  description = "The name of the Lambda function for decrypting payment responses."
}

# Record Transaction Payment Lambda:
output "record_transaction_payment_lambda_arn" {
  value       = aws_lambda_function.record_transaction_payment.arn
  description = "The ARN of the Lambda function for recording transaction details."
}

output "record_transaction_payment_lambda_name" {
  value       = aws_lambda_function.record_transaction_payment.function_name
  description = "The name of the Lambda function for recording transaction details."
}

# Post Final Response Payment Lambda:
output "post_final_response_payment_lambda_arn" {
  value       = aws_lambda_function.post_final_response_payment.arn
  description = "The ARN of the Lambda function for posting the final transaction response."
}

output "post_final_response_payment_lambda_name" {
  value       = aws_lambda_function.post_final_response_payment.function_name
  description = "The name of the Lambda function for posting the final transaction response."
}

# new_flair_website_receive lambda_function outputs
# Receive Transaction Payment Lambda Function:
output "receive_transaction_payment_lambda_arn" {
  value       = aws_lambda_function.receive_transaction_payment.arn
  description = "The ARN of the Lambda function that receives the transaction result."
}

output "receive_transaction_payment_lambda_name" {
  value       = aws_lambda_function.receive_transaction_payment.function_name
  description = "The name of the Lambda function that receives the transaction result."
}

