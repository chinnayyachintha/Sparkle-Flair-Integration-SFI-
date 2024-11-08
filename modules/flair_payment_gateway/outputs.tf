# Payment Gateway API ID:
output "payment_gateway_api_id" {
  value = aws_api_gateway_rest_api.payment_gateway_api.id
  description = "The ID of the API Gateway for the Flair Payment Gateway."
}

# API Gateway Deployment URL:
output "payment_gateway_stage_url" {
  value = "${aws_api_gateway_rest_api.payment_gateway_api.execution_arn}/${aws_api_gateway_deployment.flair_payment_gateway_deployment.stage_name}"
  description = "The full URL of the deployed API Gateway for the payment gateway."
}

# Individual Resource Paths:
# Tokenize
output "tokenize_resource_path" {
  value = aws_api_gateway_resource.tokenize_resource.path
  description = "Path for the API Gateway 'tokenize' resource."
}

# Decrypt
output "decrypt_resource_path" {
  value = aws_api_gateway_resource.decrypt_resource.path
  description = "Path for the API Gateway 'decrypt' resource."
}

# Apply Rules
output "apply_rules_resource_path" {
  value = aws_api_gateway_resource.apply_rules_resource.path
  description = "Path for the API Gateway 'apply-rules' resource."
}

# Encrypt
output "encrypt_resource_path" {
  value = aws_api_gateway_resource.encrypt_resource.path
  description = "Path for the API Gateway 'encrypt' resource."
}

# Post
output "post_resource_path" {
  value = aws_api_gateway_resource.post_resource.path
  description = "Path for the API Gateway 'post' resource."
}

