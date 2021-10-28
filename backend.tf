terraform {
  backend "remote" {
    organization = "louisphilip"

    workspaces {
      name = "aws-tfcloud"
    }
  }
}