# aws-tfcloud
A guide on how to deploy your AWS infrastructure using Terraform Cloud 

Part of this course will help you to become more familiar with GitHub. Some useful tips and tricks along the way
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_serverless"></a> [serverless](#module\_serverless) | ./modules/serverless | 1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_function"></a> [lambda\_function](#output\_lambda\_function) | This output gives other users information regarding the deployed lambda functions. |
| <a name="output_queue_url"></a> [queue\_url](#output\_queue\_url) | This output gives other users information relating to my created resources. |
<!-- END_TF_DOCS -->