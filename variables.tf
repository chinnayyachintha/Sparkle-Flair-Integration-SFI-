# AWS Region where resources will be deployed
variable "aws_region" {
  type        = string
  description = "AWS Region to deploy resources"
}

# API Gateway variables
variable "website_request_api_name" {
  description = "The name of the API Gateway for accepting reservation and payment data from the New Flair Website"
  type        = string
}

variable "receive_transaction_result_api_name" {
  description = "The name of the API Gateway for receiving transaction results"
  type        = string
}

variable "payment_gateway_response_api_name" {
  description = "The name of the API Gateway for flair payment gateway response"
  type        = string
}

variable "payment_processor_api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "payment_gateway_api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "stage_name" {
  description = "The stage name for the API Gateway deployment"
  type        = string
}

# Lambda function variables
variable "request_handler_function_name" {
  description = "Name of the Lambda function to handle requests from the New Flair Website"
  type        = string
}

variable "request_lambda_filename" {
  description = "Filename of the Lambda function to handle requests from the New Flair Website"
  type        = string
}

variable "payment_gateway_api_url" {
  description = "API URL for the Flair Payment Gateway"
  type        = string
}

variable "tokenize_function_name" {
  description = "Name of the Lambda function for tokenizing payment information"
  type        = string
}

variable "token_lambda_filename" {
  description = "Filename of the Lambda function for tokenizing payment information"
  type        = string
}

variable "api_key" {
  description = "API key for tokenizing payment information"
  type        = string
}

variable "decrypt_function_name" {
  description = "Name of the Lambda function for decrypting payment information"
  type        = string
}

variable "decrypt_lambda_filename" {
  description = "Filename of the Lambda function for decrypting payment information"
  type        = string
}

variable "decrypt_sensitive_key" {
  description = "Key for decrypting sensitive payment information"
  type        = string
}

variable "apply_rules_function_name" {
  description = "Name of the Lambda function for applying business rules to payment processing"
  type        = string
}

variable "apply_rules_lambda_filename" {
  description = "Filename of the Lambda function for applying business rules to payment processing"
  type        = string
}

variable "rules_api_endpoint" {
  description = "API endpoint for applying business rules"
  type        = string
}

variable "encrypt_function_name" {
  description = "Name of the Lambda function for encrypting payment information"
  type        = string
}

variable "encrypt_lambda_filename" {
  description = "Filename of the Lambda function for encrypting payment information"
  type        = string
}

variable "encrypt_key" {
  description = "Key for encrypting payment information"
  type        = string
}

variable "post_function_name" {
  description = "Name of the Lambda function for posting requests to the payment processor"
  type        = string
}

variable "post_lambda_filename" {
  description = "Filename of the Lambda function for posting requests to the payment processor"
  type        = string
}

variable "payment_processor_api" {
  description = "API URL for the payment processor"
  type        = string
}

variable "process_function_name" {
  description = "Name of the Lambda function for handling the core payment processing logic"
  type        = string
}

variable "process_lambda_filename" {
  description = "Filename of the Lambda function for handling the core payment processing logic"
  type        = string
}

variable "payment_api_key" {
  description = "API key for payment processing"
  type        = string
}

variable "security_token" {
  description = "Security token for payment processing"
  type        = string
}

variable "response_url" {
  description = "URL for posting responses back to the requester or frontend"
  type        = string
}

variable "decrypt_response_key" {
  description = "Key for decrypting the response from the payment processor"
  type        = string
}

variable "record_function_name" {
  description = "Name of the Lambda function for recording transaction status and details"
  type        = string
}

variable "record_lambda_filename" {
  description = "Filename of the Lambda function for recording transaction status and details"
  type        = string
}

variable "receive_function_name" {
  description = "Name of the Lambda function to handle the response from the Flair Payment Gateway"
  type        = string
}

variable "receive_lambda_filename" {
  description = "Filename of the Lambda function to handle the response from the Flair Payment Gateway"
  type        = string
}

variable "confirmation_url" {
  description = "URL for confirming transaction completion"
  type        = string
}

# IAM configurations
variable "role_name" {
  description = "The name of the IAM role for Lambda execution"
  type        = string
}

variable "policy_name" {
  description = "The name of the IAM policy for Lambda execution"
  type        = string
}

variable "policy_description" {
  description = "The description of the IAM policy for Lambda execution"
  type        = string
  default     = "IAM policy granting Lambda execution permissions"
}