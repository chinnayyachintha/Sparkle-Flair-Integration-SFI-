# The name of the API Gateway for receiving transaction results
variable "receive_transaction_result_api_name" {
    description = "The name of the API Gateway for receiving transaction results"
    type        = string
}

# The stage name for the API Gateway deployment
variable "stage_name" {
    description = "The stage name for the API Gateway deployment"
    type        = string
}