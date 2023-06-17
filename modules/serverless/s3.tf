resource "aws_s3_bucket" "test" {
  # checkov:skip=807098449873921024_AWS_1681255187702: ADD REASON
  # checkov:skip=807098449873921024_AWS_1681255187743: ADD REASON
  name = "${local.common_prefix}-${var.bucket_name}"
}
