module "naming" {
  source        = "./modules/naming"
  region_code   = "euw1"
  env_shorthand = terraform.workspace
  environment   = "Development"
  project_name  = "Serverless-Application"
  region        = data.aws_region.current.name
}
resource "aws_sqs_queue" "my-queue" {
  name              = "${module.naming.common_prefix}-${var.queue_name}"
  kms_master_key_id = "alias/aws/sqs"
  tags              = module.naming.common_tags
}