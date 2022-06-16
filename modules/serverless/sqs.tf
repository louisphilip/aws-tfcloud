resource "aws_sqs_queue" "my-queue" {
  name              = "${local.common_prefix}-${var.queue_name}"
  kms_master_key_id = "alias/aws/sqs"
}