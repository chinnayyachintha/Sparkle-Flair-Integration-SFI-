aws_region = "us-west-2"

website_request_api_name = "new_flair_website_request_api"
receive_transaction_result_api_name = "transaction_result_api"
payment_gateway_response_api_name = "payment_gateway_response_api"
payment_processor_api_name = "payment_processor_api"
payment_gateway_api_name = "payment_gateway_api"
stage_name = "dev"

request_handler_function_name = "request_handler"
request_lambda_filename = "request_handler.zip"
payment_gateway_api_url = "https://api.paymentgateway.com"

tokenize_function_name = "tokenize_payment"
token_lambda_filename = "tokenize_payment.zip"
api_key = "your_api_key_here"

decrypt_function_name = "decrypt_payment"
decrypt_lambda_filename = "decrypt_payment.zip"
decrypt_sensitive_key = "your_decrypt_key_here"

apply_rules_function_name = "apply_business_rules"
apply_rules_lambda_filename = "apply_business_rules.zip"
rules_api_endpoint = "https://api.rules.com"

encrypt_function_name = "encrypt_payment"
encrypt_lambda_filename = "encrypt_payment.zip"
encrypt_key = "your_encrypt_key_here"

post_function_name = "post_payment"
post_lambda_filename = "post_payment.zip"
payment_processor_api = "https://api.paymentprocessor.com"

process_function_name = "process_payment"
process_lambda_filename = "process_payment.zip"
payment_api_key = "your_payment_api_key_here"
security_token = "your_security_token_here"

response_url = "https://api.response.com"
decrypt_response_key = "your_decrypt_response_key_here"

record_function_name = "record_transaction"
record_lambda_filename = "record_transaction.zip"

receive_function_name = "receive_payment_response"
receive_lambda_filename = "receive_payment_response.zip"
confirmation_url = "https://api.confirmation.com"

role_name = "lambda_execution_role"
policy_name = "lambda_execution_policy"
policy_description = "IAM policy granting Lambda execution permissions"