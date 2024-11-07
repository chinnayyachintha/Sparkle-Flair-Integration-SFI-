# The name of the API Gateway for flair payment gateway response
variable "payment_gateway_response_api_name" {
    description = "The name of the API Gateway for flair payment gateway response"
    type        = string
}

# The stage name for the API Gateway deployment
variable "stage_name" {
    description = "The stage name for the API Gateway deployment"
    type        = string
}