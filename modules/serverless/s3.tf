resource "aws_s3_bucket" "test" {
	# checkov:skip=CKV_AWS_21: ADD REASON
	# checkov:skip=CKV_AWS_18: ADD REASON
  name = "${local.common_prefix}-${var.bucket_name}"
  tags = {
    secure = "true"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "test" {
  bucket = aws_s3_bucket.test.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}