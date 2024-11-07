# AWS Region where resources will be deployed
aws_region = "us-west-2"

# API Gateway variables
website_request_api_name = "website-request-api"
receive_transaction_result_api_name = "receive-transaction-result-api"
payment_gateway_response_api_name = "payment-gateway-response-api"
payment_processor_api_name = "payment-processor-api"
payment_gateway_api_name = "payment-gateway-api"
stage_name = "dev"

# Lambda function variables
# Variables for the request handler Lambda function
request_handler_function_name = "request-handler-function"
request_lambda_filename = "request_handler.zip"
payment_gateway_api_url = "https://api.paymentgateway.com"

# Variables for the tokenize function Lambda function
tokenize_function_name = "tokenize-function"
token_lambda_filename = "tokenize_function.zip"
api_key = "your-api-key"

# Variables for the decrypt function Lambda function
decrypt_function_name = "decrypt-function"
decrypt_lambda_filename = "decrypt_function.zip"
decrypt_sensitive_key = "your-decrypt-sensitive-key"

# Variables for the apply rules Lambda function
apply_rules_function_name = "apply-rules-function"
apply_rules_lambda_filename = "apply_rules_function.zip"
rules_api_endpoint = "https://api.rules.com"

# Variables for the encrypt function Lambda function
encrypt_function_name = "encrypt-function"
encrypt_lambda_filename = "encrypt_function.zip"
encrypt_key = "your-encrypt-key"

# Variables for the post function Lambda function
post_function_name = "post-function"
post_lambda_filename = "post_function.zip"
payment_processor_api = "https://api.paymentprocessor.com"

# Variables for the process function Lambda function
process_function_name = "process-function"
process_lambda_filename = "process_function.zip"
payment_api_key = "your-payment-api-key"
security_token = "your-security-token"

# Variables for the post response Lambda function
response_url = "https://response.url"

# Variables for the decrypt response Lambda function
decrypt_response_key = "your-decrypt-response-key"

# Variables for the record function Lambda function
record_function_name = "record-function"
record_lambda_filename = "record_function.zip"
receive_function_name = "receive-function"
receive_lambda_filename = "receive_function.zip"

# Variables for the confirmation URL Lambda function
confirmation_url = "https://confirmation.url"

# IAM configurations
role_name = "lambda-execution-role"
policy_name = "lambda-execution-policy"
policy_description = "IAM policy granting Lambda execution permissions"