output "queue_url" {
  value = "My Queue is deployed to URL is: ${aws_sqs_queue.my-queue.url}"
}