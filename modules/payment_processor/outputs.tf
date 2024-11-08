# Payment Processor API ID:
output "payment_processor_api_id" {
  value = aws_api_gateway_rest_api.payment_processor_api.id
  description = "The ID of the API Gateway for the Payment Processor."
}

# API Gateway Deployment URL:
output "payment_processor_stage_url" {
  value = "${aws_api_gateway_rest_api.payment_processor_api.execution_arn}/${aws_api_gateway_deployment.payment_processor_deployment.stage_name}"
  description = "The full URL of the deployed API Gateway for the Payment Processor."
}

# Individual Resource Paths:
# Process Resource
output "process_resource_path" {
  value = aws_api_gateway_resource.process_resource.path
  description = "Path for the API Gateway 'process' resource."
}

# Post Resource
output "post_resource_path" {
  value = aws_api_gateway_resource.post_resource.path
  description = "Path for the API Gateway 'post' resource."
}
