resource "aws_sns_topic" "test_topic" {
  name = "test-topic"
  tags = {
    "Name"       = "Remote-Deployment"
    "Automation" = "Was-Cool"
  }
}
