# Create the payment gateway response API
resource "aws_api_gateway_rest_api" "flair_payment_gateway_response_api" {
  name        = var.flair_payment_gateway_response_api_name
  description = "API for Flair Payment Gateway response handling"
}

# API Gateway resources for each function in the response API
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

# Lambda function ARNs (replace with actual ARNs of your functions)
data "aws_lambda_function" "decrypt_lambda" {
  function_name = "decrypt_function_name"
}

data "aws_lambda_function" "record_lambda" {
  function_name = "record_function_name"
}

data "aws_lambda_function" "post_lambda" {
  function_name = "post_function_name"
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
    uri                     = data.aws_lambda_function.decrypt_lambda.invoke_arn
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
    uri                     = data.aws_lambda_function.record_lambda.invoke_arn
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
    uri                     = data.aws_lambda_function.post_lambda.invoke_arn
  }
}

# Define Method and Integration Responses for the 'decrypt' endpoint
resource "aws_api_gateway_method_response" "decrypt_response" {
  rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
  resource_id = aws_api_gateway_resource.decrypt_resource.id
  http_method = aws_api_gateway_method.decrypt_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }
}

resource "aws_api_gateway_integration_response" "decrypt_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
  resource_id = aws_api_gateway_resource.decrypt_resource.id
  http_method = aws_api_gateway_method.decrypt_method.http_method
  status_code = "200"
  
  response_templates = {
    "application/json" = ""
  }
}

# Define Method and Integration Responses for the 'record' endpoint
resource "aws_api_gateway_method_response" "record_response" {
  rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
  resource_id = aws_api_gateway_resource.record_resource.id
  http_method = aws_api_gateway_method.record_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }
}

resource "aws_api_gateway_integration_response" "record_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
  resource_id = aws_api_gateway_resource.record_resource.id
  http_method = aws_api_gateway_method.record_method.http_method
  status_code = "200"
  
  response_templates = {
    "application/json" = ""
  }
}

# Define Method and Integration Responses for the 'post' endpoint
resource "aws_api_gateway_method_response" "post_response" {
  rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
  resource_id = aws_api_gateway_resource.post_resource.id
  http_method = aws_api_gateway_method.post_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }
}

resource "aws_api_gateway_integration_response" "post_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
  resource_id = aws_api_gateway_resource.post_resource.id
  http_method = aws_api_gateway_method.post_method.http_method
  status_code = "200"
  
  response_templates = {
    "application/json" = ""
  }
}

# Deploy the API Gateway with all the methods and resources
resource "aws_api_gateway_deployment" "flair_payment_gateway_response_deployment" {
  rest_api_id = aws_api_gateway_rest_api.flair_payment_gateway_response_api.id
  stage_name  = var.stage_name

  depends_on = [
    aws_api_gateway_method.decrypt_method,
    aws_api_gateway_method.record_method,
    aws_api_gateway_method.post_method
  ]
}
