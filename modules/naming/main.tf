locals {
  common_prefix = lower(join("-",[ 
    var.region_code,
    var.env_shorthand
  ]))
  common_tags = {
    "Environment" : var.environment,
    "Project" : var.project_name,
    "Region" : var.region
  }
}