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