resource "aws_s3_bucket" "test" {
  name = "${local.common_prefix}-${var.bucket_name}"
}


resource "aws_s3_bucket" "test_log_bucket" {
  bucket = "test-log-bucket"
}

resource "aws_s3_bucket_logging" "test" {
  bucket = aws_s3_bucket.test.id

  target_bucket = aws_s3_bucket.test_log_bucket.id
  target_prefix = "log/"
}
