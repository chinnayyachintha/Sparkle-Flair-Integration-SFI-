# API Gateway setup for receiving the response from the Flair Payment Gateway
resource "aws_api_gateway_rest_api" "receive_transaction_result_api" {
    name = var.receive_transaction_result_api_name
}

# API Gateway resource for the receive function
resource "aws_api_gateway_resource" "receive_resource" {
    rest_api_id = aws_api_gateway_rest_api.receive_transaction_result_api.id
    parent_id   = aws_api_gateway_rest_api.receive_transaction_result_api.root_resource_id
    path_part   = "receive"
}

# API Gateway method to trigger the receive Lambda function
resource "aws_api_gateway_method" "receive_method" {
    rest_api_id   = aws_api_gateway_rest_api.receive_transaction_result_api.id
    resource_id   = aws_api_gateway_resource.receive_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.receive_result.invoke_arn
    }
}

# API Gateway deployment for the receive endpoint
resource "aws_api_gateway_deployment" "receive_transaction_result_deployment" {
    rest_api_id = aws_api_gateway_rest_api.receive_transaction_result_api.id
    stage_name  = var.stage_name

    depends_on = [
        aws_api_gateway_method.receive_method
    ]
}