# Output value definitions

output "lambda_bucket_name" {
  description = "Name of the S3 bucket used to store function code."

  value = aws_s3_bucket.lambda_bucket.id
}

output "function_name" {
  description = "Name of the Lambda function."

  value = aws_lambda_function.hello_world.function_name
}

output "api_gatewayv2_base_url" {
  description = "Base URL for API v2 Gateway stage."

  value = aws_apigatewayv2_stage.lambda.invoke_url
}

output "api_gateway_base_url" {
  description = "Gateway URL for API v1 Gateway stage."

  value = aws_api_gateway_stage.test.invoke_url
}


