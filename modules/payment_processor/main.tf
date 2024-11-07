# Define the API Gateway REST API for the payment processor
resource "aws_api_gateway_rest_api" "payment_processor_api" {
    name = var.payment_processor_api_name
}

# Define the /process resource in the API Gateway
resource "aws_api_gateway_resource" "process_resource" {
    rest_api_id = aws_api_gateway_rest_api.payment_processor_api.id
    parent_id   = aws_api_gateway_rest_api.payment_processor_api.root_resource_id
    path_part   = "process"
}

# Define the /post resource in the API Gateway
resource "aws_api_gateway_resource" "post_resource" {
    rest_api_id = aws_api_gateway_rest_api.payment_processor_api.id
    parent_id   = aws_api_gateway_rest_api.payment_processor_api.root_resource_id
    path_part   = "post"
}

# Define the POST method for the /process resource
resource "aws_api_gateway_method" "process_method" {
    rest_api_id   = aws_api_gateway_rest_api.payment_processor_api.id
    resource_id   = aws_api_gateway_resource.process_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.payment_process.invoke_arn
    }
}

# Define the POST method for the /post resource
resource "aws_api_gateway_method" "post_method" {
    rest_api_id   = aws_api_gateway_rest_api.payment_processor_api.id
    resource_id   = aws_api_gateway_resource.post_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.post_response.invoke_arn
    }
}

# Deploy the API Gateway with the defined resources and methods
resource "aws_api_gateway_deployment" "payment_processor_deployment" {
    rest_api_id = aws_api_gateway_rest_api.payment_processor_api.id
    stage_name  = var.stage_name

    depends_on = [
        aws_api_gateway_method.process_method,
        aws_api_gateway_method.post_method
    ]
}