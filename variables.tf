# AWS Region where resources will be deployed
variable "aws_region" {
  type        = string
  description = "AWS Region to deploy resources"
}

# The name of the API Gateway for accepting reservation and payment data from the New Flair Website
variable "website_request_api_name" {
  description = "The name of the API Gateway for accepting reservation and payment data from the New Flair Website"
  type        = string
}

# The name of the API Gateway for receiving transaction results
variable "receive_transaction_result_api_name" {
  description = "The name of the API Gateway for receiving transaction results"
  type        = string
}

# The name of the API Gateway for flair payment gateway response
variable "payment_gateway_response_api_name" {
  description = "The name of the API Gateway for flair payment gateway response"
  type        = string
}

# The name of the API Gateway
variable "payment_processor_api_name" {
  description = "The name of the API Gateway"
  type        = string
}

# The name of the API Gateway
variable "payment_gateway_api_name" {
  description = "The name of the API Gateway"
  type        = string
}

# The stage name for the API Gateway deployment
variable "stage_name" {
  description = "The stage name for the API Gateway deployment"
  type        = string
}

# Variables for Lambda functions and related configurations

# Name of the Lambda function to handle requests from the New Flair Website
variable "request_handler_function_name" {
  description = "Name of the Lambda function to handle requests from the New Flair Website"
  type        = string
}

# Filename of the Lambda function to handle requests from the New Flair Website
variable "request_lambda_filename" {
  description = "Filename of the Lambda function to handle requests from the New Flair Website"
  type        = string
}

# API URL for the Flair Payment Gateway
variable "payment_gateway_api_url" {
  description = "API URL for the Flair Payment Gateway"
  type        = string
}

# Name of the Lambda function for tokenizing payment information
variable "tokenize_function_name" {
  description = "Name of the Lambda function for tokenizing payment information"
  type        = string
}

# Filename of the Lambda function for tokenizing payment information
variable "token_lambda_filename" {
  description = "Filename of the Lambda function for tokenizing payment information"
  type        = string
}

# API key for tokenizing payment information
variable "api_key" {
  description = "API key for tokenizing payment information"
  type        = string
}

# Name of the Lambda function for decrypting payment information
variable "decrypt_function_name" {
  description = "Name of the Lambda function for decrypting payment information"
  type        = string
}

# Filename of the Lambda function for decrypting payment information
variable "decrypt_lambda_filename" {
  description = "Filename of the Lambda function for decrypting payment information"
  type        = string
}

# Key for decrypting sensitive payment information
variable "decrypt_sensitive_key" {
  description = "Key for decrypting sensitive payment information"
  type        = string
}

# Name of the Lambda function for applying business rules to payment processing
variable "apply_rules_function_name" {
  description = "Name of the Lambda function for applying business rules to payment processing"
  type        = string
}

# Filename of the Lambda function for applying business rules to payment processing
variable "apply_rules_lambda_filename" {
  description = "Filename of the Lambda function for applying business rules to payment processing"
  type        = string
}

# API endpoint for applying business rules
variable "rules_api_endpoint" {
  description = "API endpoint for applying business rules"
  type        = string
}

# Name of the Lambda function for encrypting payment information
variable "encrypt_function_name" {
  description = "Name of the Lambda function for encrypting payment information"
  type        = string
}

# Filename of the Lambda function for encrypting payment information
variable "encrypt_lambda_filename" {
  description = "Filename of the Lambda function for encrypting payment information"
  type        = string
}

# Key for encrypting payment information
variable "encrypt_key" {
  description = "Key for encrypting payment information"
  type        = string
}

# Name of the Lambda function for posting requests to the payment processor
variable "post_function_name" {
  description = "Name of the Lambda function for posting requests to the payment processor"
  type        = string
}

# Filename of the Lambda function for posting requests to the payment processor
variable "post_lambda_filename" {
  description = "Filename of the Lambda function for posting requests to the payment processor"
  type        = string
}

# API URL for the payment processor
variable "payment_processor_api" {
  description = "API URL for the payment processor"
  type        = string
}

# Name of the Lambda function for handling the core payment processing logic
variable "process_function_name" {
  description = "Name of the Lambda function for handling the core payment processing logic"
  type        = string
}

# Filename of the Lambda function for handling the core payment processing logic
variable "process_lambda_filename" {
  description = "Filename of the Lambda function for handling the core payment processing logic"
  type        = string
}

# API key for payment processing
variable "payment_api_key" {
  description = "API key for payment processing"
  type        = string
}

# Security token for payment processing
variable "security_token" {
  description = "Security token for payment processing"
  type        = string
}

# URL for posting responses back to the requester or frontend
variable "response_url" {
  description = "URL for posting responses back to the requester or frontend"
  type        = string
}

# Key for decrypting the response from the payment processor
variable "decrypt_response_key" {
  description = "Key for decrypting the response from the payment processor"
  type        = string
}

# Name of the Lambda function for recording transaction status and details
variable "record_function_name" {
  description = "Name of the Lambda function for recording transaction status and details"
  type        = string
}

# Filename of the Lambda function for recording transaction status and details
variable "record_lambda_filename" {
  description = "Filename of the Lambda function for recording transaction status and details"
  type        = string
}

# Name of the Lambda function to handle the response from the Flair Payment Gateway
variable "receive_function_name" {
  description = "Name of the Lambda function to handle the response from the Flair Payment Gateway"
  type        = string
}

# Filename of the Lambda function to handle the response from the Flair Payment Gateway
variable "receive_lambda_filename" {
  description = "Filename of the Lambda function to handle the response from the Flair Payment Gateway"
  type        = string
}

# URL for confirming transaction completion
variable "confirmation_url" {
  description = "URL for confirming transaction completion"
  type        = string
}

# Variables for IAM configurations

# The name of the IAM role for Lambda execution
variable "role_name" {
  description = "The name of the IAM role for Lambda execution"
  type        = string
}

# The name of the IAM policy for Lambda execution
variable "policy_name" {
  description = "The name of the IAM policy for Lambda execution"
  type        = string
}

# The description of the IAM policy for Lambda execution
variable "policy_description" {
  description = "The description of the IAM policy for Lambda execution"
  type        = string
  default     = "IAM policy granting Lambda execution permissions"
}