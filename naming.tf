locals {

  common_tags = {
    "Environment" : terraform.workspace,
    "Project" : "Serverless-Application",
    "Region" : data.aws_region.current.name
  }
}
