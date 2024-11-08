aws_region = "ca-central-1"

website_request_api_name                = "new_flair_website_request_api"
stage_name                              = "dev"
flair_payment_gateway_api_name          = "flair_payment_gateway_api"
payment_processor_api_name              = "payment_processor_api"
flair_payment_gateway_response_api_name = "flair_payment_gateway_response_api"
receive_transaction_result_api_name     = "receive_transaction_result_api"

request_handler_function_name = "request_handler"
request_lambda_filename       = "request_handler.zip"
payment_gateway_api_url       = "https://api.flairpaymentgateway.com"

tokenize_function_name = "tokenize_payment"
token_lambda_filename  = "tokenize_payment.zip"
api_key                = "your_api_key_here"

decrypt_function_name   = "decrypt_payment_info"
decrypt_lambda_filename = "decrypt_payment_info.zip"
decrypt_sensitive_key   = "your_decrypt_sensitive_key_here"

apply_rules_function_name   = "apply_business_rules"
apply_rules_lambda_filename = "apply_business_rules.zip"
rules_api_endpoint          = "https://api.businessrules.com"

encrypt_function_name   = "encrypt_payment_info"
encrypt_lambda_filename = "encrypt_payment_info.zip"
encrypt_key             = "your_encrypt_key_here"

post_function_name    = "post_to_payment_processor"
post_lambda_filename  = "post_to_payment_processor.zip"
payment_processor_api = "https://api.paymentprocessor.com"

process_function_name   = "process_payment"
process_lambda_filename = "process_payment.zip"
payment_api_key         = "your_payment_api_key_here"
security_token          = "your_security_token_here"

response_url         = "https://api.response.com"
decrypt_response_key = "your_decrypt_response_key_here"

record_function_name   = "record_transaction"
record_lambda_filename = "record_transaction.zip"

post_final_function_name   = "post_final_response"
post_final_lambda_filename = "post_final_response.zip"
final_response_url         = "https://api.finalresponse.com"

receive_function_name   = "receive_flair_response"
receive_lambda_filename = "receive_flair_response.zip"
confirmation_url        = "https://api.confirmation.com"