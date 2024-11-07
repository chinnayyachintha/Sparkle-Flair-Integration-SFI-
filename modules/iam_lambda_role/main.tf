# Define the IAM role for Lambda execution
resource "aws_iam_role" "lambda_exec" {
    name = var.role_name

    # Define the trust relationship policy for the role
    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action    = "sts:AssumeRole"
                Effect    = "Allow"
                Principal = {
                    Service = "lambda.amazonaws.com"
                }
            }
        ]
    })

    # Tags for the IAM role
    tags = {
        Name = var.role_name
    }
}

# Define the IAM policy for Lambda execution
resource "aws_iam_policy" "lambda_execution_policy" {
    name        = var.policy_name
    description = "IAM policy granting Lambda execution permissions"

    # Define the policy document
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action   = [
                    "logs:CreateLogGroup",
                    "logs:CreateLogStream",
                    "logs:PutLogEvents",
                    "dynamodb:PutItem",
                    "dynamodb:Query",
                    "dynamodb:UpdateItem",
                    "sns:Publish",
                    "secretsmanager:GetSecretValue"
                ]
                Effect   = "Allow"
                Resource = "*"
            }
        ]
    })
}

# Attach the IAM policy to the IAM role
resource "aws_iam_role_policy_attachment" "lambda_execution_role_policy_attachment" {
    role       = aws_iam_role.lambda_exec.name
    policy_arn = aws_iam_policy.lambda_execution_policy.arn
}