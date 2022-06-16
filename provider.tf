terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}
provider "aws" {
  # removed profile
  region  = terraform.workspace == "dev" ? "eu-west-1" : "eu-west-2"
  default_tags {
    tags = {
      Environment : terraform.workspace == "dev" ? "Development" : "Production",
      Project : "Serverless-Application",
      Region : terraform.workspace == "dev" ? "eu-west-1" : "eu-west-2"
    }
  }
}
