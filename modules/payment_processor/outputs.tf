# The ID of the Payment Processor API Gateway REST API
output "payment_processor_api_id" {
    value = aws_api_gateway_rest_api.payment_processor_api.id
}

# The ID of the process resource in the API Gateway
output "process_resource_id" {
    value = aws_api_gateway_resource.process_resource.id
}

# The ID of the post resource in the API Gateway
output "post_resource_id" {
    value = aws_api_gateway_resource.post_resource.id
}

# The ID of the process method in the API Gateway
output "process_method_id" {
    value = aws_api_gateway_method.process_method.id
}

# The ID of the post method in the API Gateway
output "post_method_id" {
    value = aws_api_gateway_method.post_method.id
}

# The ID of the deployment for the Payment Processor API Gateway
output "payment_processor_deployment_id" {
    value = aws_api_gateway_deployment.payment_processor_deployment.id
}