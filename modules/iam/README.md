<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.connect](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_policy.eks_cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.eks_cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_cluster_autoscaler_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.eks_cluster_autoscaler_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [tls_certificate.eks](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_EKSClusterAutoScalerPolicy"></a> [EKSClusterAutoScalerPolicy](#input\_EKSClusterAutoScalerPolicy) | n/a | `any` | n/a | yes |
| <a name="input_EKSClusterAutoScalerRole"></a> [EKSClusterAutoScalerRole](#input\_EKSClusterAutoScalerRole) | n/a | `any` | n/a | yes |
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `any` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | n/a | `any` | n/a | yes |
| <a name="input_oidc_url"></a> [oidc\_url](#input\_oidc\_url) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_autoscaler_role"></a> [autoscaler\_role](#output\_autoscaler\_role) | n/a |
| <a name="output_cluster_autoscaler"></a> [cluster\_autoscaler](#output\_cluster\_autoscaler) | n/a |
| <a name="output_eks_cluster_autoscaler_arn"></a> [eks\_cluster\_autoscaler\_arn](#output\_eks\_cluster\_autoscaler\_arn) | n/a |
<!-- END_TF_DOCS -->