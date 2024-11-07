# API Gateway for accepting reservation and payment data from the New Flair Website
resource "aws_api_gateway_rest_api" "website_request_api" {
    name = var.website_request_api_name
}

# API Gateway resource for sending requests to the Flair Payment Gateway
resource "aws_api_gateway_resource" "request_resource" {
    rest_api_id = aws_api_gateway_rest_api.website_request_api.id
    parent_id   = aws_api_gateway_rest_api.website_request_api.root_resource_id
    path_part   = "request"
}

# API Gateway method to trigger the request Lambda function
resource "aws_api_gateway_method" "request_method" {
    rest_api_id   = aws_api_gateway_rest_api.website_request_api.id
    resource_id   = aws_api_gateway_resource.request_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.request_handler.invoke_arn
    }
}

# API Gateway deployment for the request endpoint
resource "aws_api_gateway_deployment" "website_request_deployment" {
    rest_api_id = aws_api_gateway_rest_api.website_request_api.id
    stage_name  = var.stage_name

    depends_on = [
        aws_api_gateway_method.request_method
    ]
}