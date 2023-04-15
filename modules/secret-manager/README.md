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
| [aws_secretsmanager_secret.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `any` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | n/a | `any` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | n/a | `list(map(any))` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_arn"></a> [secret\_arn](#output\_secret\_arn) | n/a |
<!-- END_TF_DOCS -->