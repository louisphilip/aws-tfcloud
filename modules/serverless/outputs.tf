output "queue_url" {
  description = "This output gives other users information relating to my created resources."
  value       = aws_sqs_queue.my-queue.url
}