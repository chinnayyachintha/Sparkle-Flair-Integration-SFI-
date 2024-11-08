# API Gateway ID:
output "website_request_api_id" {
  value = aws_api_gateway_rest_api.website_request_api.id
  description = "The ID of the API Gateway for the New Flair Website requests."
}

# API Gateway URL:
output "website_request_api_url" {
  value = aws_api_gateway_rest_api.website_request_api.execution_arn
  description = "The URL of the API Gateway for accepting reservation and payment data."
}

# API Gateway Resource Path:
output "request_resource_path" {
  value = aws_api_gateway_resource.request_resource.path
  description = "Path for the API Gateway resource used to send requests to the Flair Payment Gateway."
}

# API Gateway Deployment URL (combines the api_id and stage for easier testing):
output "website_request_stage_url" {
  value = "${aws_api_gateway_rest_api.website_request_api.execution_arn}/${aws_api_gateway_deployment.website_request_deployment.stage_name}"
  description = "Full URL of the deployed API Gateway endpoint."
}

# Lambda Integration URI for API Gateway (useful for testing in tools like Postman):
output "request_handler_integration_uri" {
  value = aws_api_gateway_method.request_method.integration.uri
  description = "The URI used by API Gateway to integrate with the Lambda function."
}

