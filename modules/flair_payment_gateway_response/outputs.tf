# Output the ID of the API Gateway
output "api_gateway_id" {
    description = "ID of the API Gateway"
    value       = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
}

# Output the root resource ID of the API Gateway
output "api_gateway_root_resource_id" {
    description = "Root resource ID of the API Gateway"
    value       = aws_api_gateway_rest_api.flair_payment_gateway_response_api.root_resource_id
}

# Output the ID of the decrypt resource
output "decrypt_resource_id" {
    description = "ID of the decrypt resource"
    value       = aws_api_gateway_resource.decrypt_resource.id
}

# Output the ID of the record resource
output "record_resource_id" {
    description = "ID of the record resource"
    value       = aws_api_gateway_resource.record_resource.id
}

# Output the ID of the post resource
output "post_resource_id" {
    description = "ID of the post resource"
    value       = aws_api_gateway_resource.post_resource.id
}

# Output the ID of the decrypt method
output "decrypt_method_id" {
    description = "ID of the decrypt method"
    value       = aws_api_gateway_method.decrypt_method.id
}

# Output the ID of the record method
output "record_method_id" {
    description = "ID of the record method"
    value       = aws_api_gateway_method.record_method.id
}

# Output the ID of the post method
output "post_method_id" {
    description = "ID of the post method"
    value       = aws_api_gateway_method.post_method.id
}

# Output the ID of the API Gateway deployment
output "deployment_id" {
    description = "ID of the API Gateway deployment"
    value       = aws_api_gateway_deployment.flair_payment_gateway_response_deployment.id
}