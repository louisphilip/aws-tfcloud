provider "aws" {
  # removed profile
  region  = "eu-west-1"
  default_tags {
    tags = {
      Environment : terraform.workspace == "dev" ? "Development" : "Production",
      Project : "Serverless-Application",
      Region : "eu-west-1"
    }
  }
}
