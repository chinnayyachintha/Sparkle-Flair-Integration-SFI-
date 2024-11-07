# Creates an API Gateway REST API for the payment gateway.
resource "aws_api_gateway_rest_api" "payment_gateway_api" {
    name = var.payment_gateway_api_name
}

# Creates a resource for the "tokenize" endpoint in the API Gateway.
resource "aws_api_gateway_resource" "tokenize_resource" {
    rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
    parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
    path_part   = "tokenize"
}

# Creates a resource for the "decrypt" endpoint in the API Gateway.
resource "aws_api_gateway_resource" "decrypt_resource" {
    rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
    parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
    path_part   = "decrypt"
}

# Creates a resource for the "apply-rules" endpoint in the API Gateway.
resource "aws_api_gateway_resource" "apply_rules_resource" {
    rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
    parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
    path_part   = "apply-rules"
}

# Creates a resource for the "encrypt" endpoint in the API Gateway.
resource "aws_api_gateway_resource" "encrypt_resource" {
    rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
    parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
    path_part   = "encrypt"
}

# Creates a resource for the "post" endpoint in the API Gateway.
resource "aws_api_gateway_resource" "post_resource" {
    rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
    parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
    path_part   = "post"
}

# Creates a POST method for the "tokenize" resource with AWS Lambda integration.
resource "aws_api_gateway_method" "tokenize_method" {
    rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
    resource_id   = aws_api_gateway_resource.tokenize_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.tokenize_payment.invoke_arn
    }
}

# Creates a POST method for the "decrypt" resource with AWS Lambda integration.
resource "aws_api_gateway_method" "decrypt_method" {
    rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
    resource_id   = aws_api_gateway_resource.decrypt_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.decrypt_payment.invoke_arn
    }
}

# Creates a POST method for the "apply-rules" resource with AWS Lambda integration.
resource "aws_api_gateway_method" "apply_rules_method" {
    rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
    resource_id   = aws_api_gateway_resource.apply_rules_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.apply_business_rules.invoke_arn
    }
}

# Creates a POST method for the "encrypt" resource with AWS Lambda integration.
resource "aws_api_gateway_method" "encrypt_method" {
    rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
    resource_id   = aws_api_gateway_resource.encrypt_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.encrypt_payment.invoke_arn
    }
}

# Creates a POST method for the "post" resource with AWS Lambda integration.
resource "aws_api_gateway_method" "post_method" {
    rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
    resource_id   = aws_api_gateway_resource.post_resource.id
    http_method   = "POST"
    authorization = "NONE"

    integration {
        type                    = "AWS_PROXY"
        integration_http_method = "POST"
        uri                     = aws_lambda_function.post_payment.invoke_arn
    }
}

# Deploys the API Gateway with all the methods and resources.
resource "aws_api_gateway_deployment" "flair_payment_gateway_deployment" {
    rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
    stage_name  = var.stage_name

    depends_on = [
        aws_api_gateway_method.tokenize_method,
        aws_api_gateway_method.decrypt_method,
        aws_api_gateway_method.apply_rules_method,
        aws_api_gateway_method.encrypt_method,
        aws_api_gateway_method.post_method
    ]
}