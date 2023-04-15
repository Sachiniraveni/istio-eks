<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_registry_scanning_configuration.security](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_registry_scanning_configuration) | resource |
| [aws_ecr_repository.veritas-repo](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `any` | n/a | yes |
| <a name="input_ecr_tags"></a> [ecr\_tags](#input\_ecr\_tags) | n/a | `map(string)` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | n/a | `any` | n/a | yes |
| <a name="input_filter_type"></a> [filter\_type](#input\_filter\_type) | n/a | `any` | n/a | yes |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | n/a | `any` | n/a | yes |
| <a name="input_qa_filter"></a> [qa\_filter](#input\_qa\_filter) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_repo_filter"></a> [repo\_filter](#input\_repo\_filter) | n/a | `any` | n/a | yes |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | n/a | `any` | n/a | yes |
| <a name="input_scan_frequency"></a> [scan\_frequency](#input\_scan\_frequency) | n/a | `any` | n/a | yes |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | n/a | `any` | n/a | yes |
| <a name="input_scan_type"></a> [scan\_type](#input\_scan\_type) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecr_repo_name"></a> [ecr\_repo\_name](#output\_ecr\_repo\_name) | n/a |
| <a name="output_image_scanning_configuration"></a> [image\_scanning\_configuration](#output\_image\_scanning\_configuration) | n/a |
| <a name="output_image_tag_mutability"></a> [image\_tag\_mutability](#output\_image\_tag\_mutability) | n/a |
<!-- END_TF_DOCS -->