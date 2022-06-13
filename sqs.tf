resource "aws_sqs_queue" "my-queue" {
  name              = var.queue_name
  kms_master_key_id = "aws/sqs"
  tags              = local.common_tags
}