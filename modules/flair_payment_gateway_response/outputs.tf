# Flair Payment Gateway Response API ID:
output "flair_payment_gateway_response_api_id" {
  value       = aws_api_gateway_rest_api.payment_gateway_response_api.id
  description = "The ID of the API Gateway for the Flair Payment Gateway response."
}

# Flair Payment Gateway Stage URL:
output "flair_payment_gateway_response_stage_url" {
  value       = "${aws_api_gateway_rest_api.payment_gateway_response_api.execution_arn}/${aws_api_gateway_deployment.flair_payment_gateway_response_deployment.stage_name}"
  description = "The full URL of the deployed API Gateway for the Flair Payment Gateway response."
}

# Resource Paths:
# Decrypt Resource
output "decrypt_resource_path" {
  value       = aws_api_gateway_resource.decrypt_resource.path
  description = "Path for the API Gateway 'decrypt' resource."
}

# Record Resource
output "record_resource_path" {
  value       = aws_api_gateway_resource.record_resource.path
  description = "Path for the API Gateway 'record' resource."
}

# Post Resource
output "post_resource_path" {
  value       = aws_api_gateway_resource.post_resource.path
  description = "Path for the API Gateway 'post' resource."
}
