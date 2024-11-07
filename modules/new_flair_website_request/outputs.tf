# The ID of the API Gateway REST API for the website request API
output "api_gateway_rest_api_id" {
    value = aws_api_gateway_rest_api.website_request_api.id
}

# The root resource ID of the API Gateway REST API for the website request API
output "api_gateway_rest_api_root_resource_id" {
    value = aws_api_gateway_rest_api.website_request_api.root_resource_id
}

# The ID of the API Gateway resource for the request resource
output "api_gateway_request_resource_id" {
    value = aws_api_gateway_resource.request_resource.id
}

# The HTTP method of the API Gateway method for the request method
output "api_gateway_request_method_http_method" {
    value = aws_api_gateway_method.request_method.http_method
}

# The ID of the API Gateway deployment for the website request deployment
output "api_gateway_deployment_id" {
    value = aws_api_gateway_deployment.website_request_deployment.id
}