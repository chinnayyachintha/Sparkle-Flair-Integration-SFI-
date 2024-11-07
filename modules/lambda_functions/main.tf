# Lambda function to handle requests from the New Flair Website
# This function receives reservation requests and routes them through the Flair Payment Gateway.
resource "aws_lambda_function" "request_handler" {
    function_name = var.request_handler_function_name
    filename      = var.request_lambda_filename
    handler       = "request_handler.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            PAYMENT_GATEWAY_API = var.payment_gateway_api_url
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for tokenizing payment information
# Handles the tokenization of sensitive payment data before sending it to the payment gateway.
resource "aws_lambda_function" "tokenize" {
    function_name = var.tokenize_function_name
    filename      = var.token_lambda_filename
    handler       = "tokenize.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            API_KEY = var.api_key
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for decrypting payment information
# Decrypts sensitive payment data to make it accessible for processing.
resource "aws_lambda_function" "decrypt_sensitive" {
    function_name = var.decrypt_function_name
    filename      = var.decrypt_lambda_filename
    handler       = "decrypt_sensitive.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            DECRYPT_KEY = var.decrypt_sensitive_key
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for applying business rules to payment processing
# Applies custom business rules to the payment data to ensure compliance.
resource "aws_lambda_function" "apply_rules" {
    function_name = var.apply_rules_function_name
    filename      = var.apply_rules_lambda_filename
    handler       = "apply_rules.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            RULES_API = var.rules_api_endpoint
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for encrypting payment information
# Encrypts payment data before sending it to the payment processor.
resource "aws_lambda_function" "encrypt_payment_data" {
    function_name = var.encrypt_function_name
    filename      = var.encrypt_lambda_filename
    handler       = "encrypt_payment_data.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            ENCRYPT_KEY = var.encrypt_key
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for posting requests to the payment processor
# Sends the processed payment data to the payment processor's API.
resource "aws_lambda_function" "post_request" {
    function_name = var.post_function_name
    filename      = var.post_lambda_filename
    handler       = "post_request.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            PAYMENT_PROCESSOR_API = var.payment_processor_api
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for handling the core payment processing logic
# Manages the end-to-end payment processing, including authentication and validation.
resource "aws_lambda_function" "payment_process" {
    function_name = var.process_function_name
    filename      = var.process_lambda_filename
    handler       = "payment_process.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            PAYMENT_API_KEY = var.payment_api_key
            SECURITY_TOKEN  = var.security_token
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for posting responses back to the requester or frontend
# Sends the final payment processing status or confirmation to the requesting system.
resource "aws_lambda_function" "post_response" {
    function_name = var.post_function_name
    filename      = var.post_lambda_filename
    handler       = "post_response.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            RESPONSE_URL = var.response_url
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for decrypting the response from the Payment Processor
# Decrypts the response received from the payment processor for further processing.
resource "aws_lambda_function" "decrypt_response" {
    function_name = var.decrypt_function_name
    filename      = var.decrypt_lambda_filename
    handler       = "decrypt_response.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            DECRYPT_KEY = var.decrypt_response_key
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function for recording transaction status and details
# Logs transaction information for auditing and troubleshooting.
resource "aws_lambda_function" "record_transaction" {
    function_name = var.record_function_name
    filename      = var.record_lambda_filename
    handler       = "record_transaction.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            LOG_LEVEL = "INFO"
        }
    }
    role = aws_iam_role.lambda_exec.arn
}

# Lambda function to handle the response from the Flair Payment Gateway
# Receives the final response from the Flair Payment Gateway to confirm transaction completion.
resource "aws_lambda_function" "receive_result" {
    function_name = var.receive_function_name
    filename      = var.receive_lambda_filename
    handler       = "receive_result.handler"
    runtime       = "python3.8"
    environment {
        variables = {
            CONFIRMATION_URL = var.confirmation_url
        }
    }
    role = aws_iam_role.lambda_exec.arn
}
