# API Gateway setup
resource "aws_api_gateway_rest_api" "payment_gateway_response_api" {
    name = var.payment_gateway_response_api_name
}

# API Gateway resource for each function
resource "aws_api_gateway_resource" "decrypt_resource" {
    rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
    parent_id   = aws_api_gateway_rest_api.flair_payment_gateway_response_api.root_resource_id
    path_part   = "decrypt"
}

resource "aws_api_gateway_resource" "record_resource" {
    rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
    parent_id   = aws_api_gateway_rest_api.flair_payment_gateway_response_api.root_resource_id
    path_part   = "record"
}

resource "aws_api_gateway_resource" "post_resource" {
    rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
    parent_id   = aws_api_gateway_rest_api.flair_payment_gateway_response_api.root_resource_id
    path_part   = "post"
}

# API Gateway methods for each Lambda function
resource "aws_api_gateway_method" "decrypt_method" {
    rest_api_id   = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
    resource_id   = aws_api_gateway_resource.decrypt_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.decrypt.invoke_arn
    }
}

resource "aws_api_gateway_method" "record_method" {
    rest_api_id   = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
    resource_id   = aws_api_gateway_resource.record_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.record.invoke_arn
    }
}

resource "aws_api_gateway_method" "post_method" {
    rest_api_id   = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
    resource_id   = aws_api_gateway_resource.post_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.post.invoke_arn
    }
}

# API Gateway deployment
resource "aws_api_gateway_deployment" "flair_payment_gateway_response_deployment" {
    rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
    stage_name  = var.stage_name

    depends_on = [
        aws_api_gateway_method.decrypt_method,
        aws_api_gateway_method.record_method,
        aws_api_gateway_method.post_method
    ]
}