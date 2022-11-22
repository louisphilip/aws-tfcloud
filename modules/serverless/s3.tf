resource "aws_s3_bucket" "test" {
  name = "${local.common_prefix}-${var.bucket_name}"
}