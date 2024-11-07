module "new_flair_website_request" {
  source = "./modules/new_flair_website_request"
}

module "flair_payment_gateway" {
  source = "./modules/flair_payment_gateway"
}

module "payment_processor" {
  source = "./modules/payment_processor"
}

module "flair_payment_gateway_response" {
  source = "./modules/payment_gateway_response"
}

module "new_flair_website_response" {
  source = "./modules/new_flair_website_response"
}