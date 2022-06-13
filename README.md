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

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sqs_queue.my-queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_queue_name"></a> [queue\_name](#input\_queue\_name) | The name of your queue | `string` | `"new-queue"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_queue_url"></a> [queue\_url](#output\_queue\_url) | This output gives other users information relating to my created resources. |
<!-- END_TF_DOCS -->