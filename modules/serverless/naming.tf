locals {
  common_prefix = lower(join("-", [
    var.region_code,
    var.env_shorthand
  ]))
}