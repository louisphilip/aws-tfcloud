resource "aws_iam_role" "lambda_role" {
  name                = "${local.common_prefix}-lambda-role"
  assume_role_policy  = data.template_file.assume_role.rendered
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  inline_policy {
    name = "lambda_inline_sqs"

    policy = data.template_file.lamda_policy.rendered
  }
}