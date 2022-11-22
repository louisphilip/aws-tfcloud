module "serverless" {
  source = "./modules/serverless"

  region_code   = "euw1"
  env_shorthand = terraform.workspace
  queue_name    = "new-queue"
  bucket_name   = "louisphilipshahimtestingcooliac" 
}