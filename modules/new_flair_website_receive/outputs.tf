# Receive Transaction Result API ID:
output "receive_transaction_result_api_id" {
  value       = aws_api_gateway_rest_api.receive_transaction_result_api.id
  description = "The ID of the API Gateway for receiving transaction results from the Flair Payment Gateway."
}

# Receive Transaction Result Stage URL:
output "receive_transaction_result_stage_url" {
  value       = "${aws_api_gateway_rest_api.receive_transaction_result_api.execution_arn}/${aws_api_gateway_deployment.receive_transaction_result_deployment.stage_name}"
  description = "The full URL of the deployed API Gateway for receiving transaction results."
}

# Receive Resource Path:
output "receive_resource_path" {
  value       = aws_api_gateway_resource.receive_resource.path
  description = "Path for the API Gateway 'receive' resource."
}
