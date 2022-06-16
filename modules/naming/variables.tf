variable "region_code" {
  type = string
  description = "The region code to deploy resources i.e. euw1/euw2 etc."
}

variable "env_shorthand" {
    type = string
    description = "The environment shorthand to be used i.e. dev/prod etc."
}

variable "environment" {
    type = string
    description = "The environment name for this deployment i.e. Development/Testing/Production etc."
}

variable "project_name" {
    type = string
    description = "The name of the project."
}

variable "region" {
    type = string
    description = "The full region name for this deployment i.e. eu-west-1/eu-west-2 etc."
}