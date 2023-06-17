output "queue_url" {
  description = "This output gives other users information relating to my created resources."
  value       = "My Queue is deployed to ${data.aws_region.current.name} and the URL is: ${module.serverless.queue_url}"
}

output "lambda_function" {
  description = "This output gives other users information regarding the deployed lambda functions."
  value       = module.serverless.lambda_function
}