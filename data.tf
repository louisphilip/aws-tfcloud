# Get current AWS Region
data "aws_region" "current" {}

data "template_file" "assume_role" {
  template = file("${path.module}/policies/assume_role.json")
}

data "template_file" "lamda_policy" {
  template = file("${path.module}/policies/lambda_policy.json")
  vars = {
    "my_sqs_arn" = aws_sqs_queue.my-queue.arn
  }
}