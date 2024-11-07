# The name of the API Gateway for accepting reservation and payment data from the New Flair Website
variable "website_request_api_name" {
    description = "The name of the API Gateway for accepting reservation and payment data from the New Flair Website"
    type        = string
}

# The stage name for the API Gateway deployment
variable "stage_name" {
    description = "The stage name for the API Gateway deployment"
    type        = string
}