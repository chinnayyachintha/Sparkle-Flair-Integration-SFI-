# Define the API Gateway REST API for the flair payment gateway
resource "aws_api_gateway_rest_api" "payment_gateway_api" {
  name = var.flair_payment_gateway_api_name
}

# Define resources (endpoints) for each action
resource "aws_api_gateway_resource" "tokenize_resource" {
  rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
  parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
  path_part   = "tokenize"
}

resource "aws_api_gateway_resource" "decrypt_resource" {
  rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
  parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
  path_part   = "decrypt"
}

resource "aws_api_gateway_resource" "apply_rules_resource" {
  rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
  parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
  path_part   = "apply-rules"
}

resource "aws_api_gateway_resource" "encrypt_resource" {
  rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
  parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
  path_part   = "encrypt"
}

resource "aws_api_gateway_resource" "post_resource" {
  rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
  parent_id   = aws_api_gateway_rest_api.payment_gateway_api.root_resource_id
  path_part   = "post"
}

# Define methods and integrations for each action
resource "aws_api_gateway_method" "tokenize_method" {
  rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id   = aws_api_gateway_resource.tokenize_resource.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "tokenize_integration" {
  rest_api_id             = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id             = aws_api_gateway_resource.tokenize_resource.id
  http_method             = aws_api_gateway_method.tokenize_method.http_method
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = aws_lambda_function.tokenize_payment.invoke_arn
}

resource "aws_api_gateway_method" "decrypt_method" {
  rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id   = aws_api_gateway_resource.decrypt_resource.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "decrypt_integration" {
  rest_api_id             = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id             = aws_api_gateway_resource.decrypt_resource.id
  http_method             = aws_api_gateway_method.decrypt_method.http_method
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = aws_lambda_function.decrypt_payment.invoke_arn
}

resource "aws_api_gateway_method" "apply_rules_method" {
  rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id   = aws_api_gateway_resource.apply_rules_resource.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "apply_rules_integration" {
  rest_api_id             = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id             = aws_api_gateway_resource.apply_rules_resource.id
  http_method             = aws_api_gateway_method.apply_rules_method.http_method
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = aws_lambda_function.apply_business_rules.invoke_arn
}

resource "aws_api_gateway_method" "encrypt_method" {
  rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id   = aws_api_gateway_resource.encrypt_resource.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "encrypt_integration" {
  rest_api_id             = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id             = aws_api_gateway_resource.encrypt_resource.id
  http_method             = aws_api_gateway_method.encrypt_method.http_method
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = aws_lambda_function.encrypt_payment.invoke_arn
}

resource "aws_api_gateway_method" "post_method" {
  rest_api_id   = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id   = aws_api_gateway_resource.post_resource.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.payment_gateway_api.id
  resource_id             = aws_api_gateway_resource.post_resource.id
  http_method             = aws_api_gateway_method.post_method.http_method
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = aws_lambda_function.post_payment.invoke_arn
}

# Deploy the API Gateway with all methods and resources
resource "aws_api_gateway_deployment" "flair_payment_gateway_deployment" {
  rest_api_id = aws_api_gateway_rest_api.payment_gateway_api.id
  stage_name  = var.stage_name

  depends_on = [
    aws_api_gateway_method.tokenize_method,
    aws_api_gateway_method.decrypt_method,
    aws_api_gateway_method.apply_rules_method,
    aws_api_gateway_method.encrypt_method,
    aws_api_gateway_method.post_method,
    aws_api_gateway_integration.tokenize_integration,
    aws_api_gateway_integration.decrypt_integration,
    aws_api_gateway_integration.apply_rules_integration,
    aws_api_gateway_integration.encrypt_integration,
    aws_api_gateway_integration.post_integration
  ]
}
