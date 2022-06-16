# aws-tfcloud
A guide on how to deploy your AWS infrastructure using Terraform Cloud 

Part of this course will help you to become more familiar with GitHub. Some useful tips and tricks along the way
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.18.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_serverless"></a> [serverless](#module\_serverless) | ./modules/serverless | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_queue_url"></a> [queue\_url](#output\_queue\_url) | This output gives other users information relating to my created resources. |
<!-- END_TF_DOCS -->