resource "aws_sqs_queue" "my_queue" {
  name              = "my-cool-queue"
  kms_master_key_id = "aws/sqs"
}