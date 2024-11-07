# Outputs the ID of the API Gateway REST API for receiving transaction results
output "api_gateway_rest_api_id" {
    value = aws_api_gateway_rest_api.receive_transaction_result_api.id
}

# Outputs the ID of the API Gateway deployment for receiving transaction results
output "api_gateway_deployment_id" {
    value = aws_api_gateway_deployment.receive_transaction_result_deployment.id
}

# Outputs the invoke URL of the API Gateway for receiving transaction results
output "api_gateway_invoke_url" {
    value = "${aws_api_gateway_rest_api.receive_transaction_result_api.execution_arn}/${var.stage_name}/receive"
}