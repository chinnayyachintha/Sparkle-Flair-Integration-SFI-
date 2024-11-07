# The name of the API Gateway
variable "payment_gateway_api_name" {
    description = "The name of the API Gateway"
    type        = string
}

# The deployment stage name
variable "stage_name" {
    description = "The deployment stage name"
    type        = string
}