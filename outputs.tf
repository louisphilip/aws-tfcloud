output "queue_url" {
  description = "This output gives other users information relating to my created resources."
  value       = "My Queue is deployed to ${data.aws_region.current.name} and the URL is: ${aws_sqs_queue.my-queue.url}"
}