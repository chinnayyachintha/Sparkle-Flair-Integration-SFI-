# Module for handling new flair website requests
module "new_flair_website_request" {
  source = "./modules/new_flair_website_request"

  website_request_api_name = var.website_request_api_name
  stage_name               = var.stage_name
}

# Module for flair payment gateway operations
module "flair_payment_gateway" {
  source = "./modules/flair_payment_gateway"

  flair_payment_gateway_api_name = var.flair_payment_gateway_api_name
  stage_name               = var.stage_name
}

# Module for payment processor
module "payment_processor" {
  source = "./modules/payment_processor"

  payment_processor_api_name = var.payment_processor_api_name
  stage_name                 = var.stage_name
}

# Module for flair payment gateway response handling
module "flair_payment_gateway_response" {
  source = "./modules/flair_payment_gateway_response"

  flair_payment_gateway_response_api_name = var.flair_payment_gateway_response_api_name
  stage_name                        = var.stage_name
}

# Module for receiving new flair website data
module "new_flair_website_receive" {
  source = "./modules/new_flair_website_receive"

  receive_transaction_result_api_name = var.receive_transaction_result_api_name
  stage_name                          = var.stage_name
}