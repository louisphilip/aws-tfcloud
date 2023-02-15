module "serverless" {
	# checkov:skip=807098449873921024_AWS_1674029894599: Tags not required at module level
  source = "./modules/serverless"

  region_code   = "euw1"
  env_shorthand = terraform.workspace
  queue_name    = "new-queue"
  bucket_name   = "louisphilipshahimtestingcooliac"
  
}

module "database" {
  source        = "./modules/database"
  db_identifier = "testing-instance"
}