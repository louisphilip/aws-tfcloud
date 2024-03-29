module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "5.0.0"

  function_name = "${local.common_prefix}-serverless"
  description   = "My awesome serverless lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"
  timeout       = "30"
  lambda_role   = aws_iam_role.lambda_role.arn
  create_role   = false

  source_path = "${path.module}/lambda/serverless"
}

# Lambda Trigger
resource "aws_lambda_event_source_mapping" "my_lambda_trigger" {
  event_source_arn = aws_sqs_queue.my-queue.arn
  function_name    = module.lambda_function.lambda_function_name
}
