# Outputs the ID of the payment gateway API.
output "payment_gateway_api_id" {
  value = aws_api_gateway_rest_api.payment_gateway_api.id
}

# Outputs the ID of the tokenize resource.
output "tokenize_resource_id" {
  value = aws_api_gateway_resource.tokenize_resource.id
}

# Outputs the ID of the decrypt resource.
output "decrypt_resource_id" {
  value = aws_api_gateway_resource.decrypt_resource.id
}

# Outputs the ID of the apply rules resource.
output "apply_rules_resource_id" {
  value = aws_api_gateway_resource.apply_rules_resource.id
}

# Outputs the ID of the encrypt resource.
output "encrypt_resource_id" {
  value = aws_api_gateway_resource.encrypt_resource.id
}

# Outputs the ID of the post resource.
output "post_resource_id" {
  value = aws_api_gateway_resource.post_resource.id
}

# Outputs the ID of the tokenize method.
output "tokenize_method_id" {
  value = aws_api_gateway_method.tokenize_method.id
}

# Outputs the ID of the decrypt method.
output "decrypt_method_id" {
  value = aws_api_gateway_method.decrypt_method.id
}

# Outputs the ID of the apply rules method.
output "apply_rules_method_id" {
  value = aws_api_gateway_method.apply_rules_method.id
}

# Outputs the ID of the encrypt method.
output "encrypt_method_id" {
  value = aws_api_gateway_method.encrypt_method.id
}

# Outputs the ID of the post method.
output "post_method_id" {
  value = aws_api_gateway_method.post_method.id
}

# Outputs the ID of the deployment for the Flair payment gateway.
output "flair_payment_gateway_deployment_id" {
  value = aws_api_gateway_deployment.flair_payment_gateway_deployment.id
}