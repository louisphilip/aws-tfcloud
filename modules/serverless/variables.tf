variable "region_code" {
  type        = string
  description = "The region code to deploy resources i.e. euw1/euw2 etc."
}

variable "env_shorthand" {
  type        = string
  description = "The environment shorthand to be used i.e. dev/prod etc."
}

variable "queue_name" {
  type        = string
  description = "The name of your queue"
}

variable "bucket_name" {
  type        = string
  description = "(optional) bucket name"
}