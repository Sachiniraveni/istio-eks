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
| [aws_eks_cluster.veritas-eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.veritas-node-group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.EKSNodegroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.eks-cluster-ServiceRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSVPCResourceController](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.aws_ec2_container_registry_read_only](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.aws_eks_cni_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.aws_eks_worker_node_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eksclusterPolicy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group.veritas-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AmazonEKSVPCResourceController"></a> [AmazonEKSVPCResourceController](#input\_AmazonEKSVPCResourceController) | n/a | `any` | n/a | yes |
| <a name="input_AwsEC2ContainerRegistryReadOnly"></a> [AwsEC2ContainerRegistryReadOnly](#input\_AwsEC2ContainerRegistryReadOnly) | n/a | `any` | n/a | yes |
| <a name="input_EKSClusterServiceRole"></a> [EKSClusterServiceRole](#input\_EKSClusterServiceRole) | n/a | `any` | n/a | yes |
| <a name="input_EksNodeGroupRoleName"></a> [EksNodeGroupRoleName](#input\_EksNodeGroupRoleName) | n/a | `any` | n/a | yes |
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | n/a | `any` | n/a | yes |
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `any` | n/a | yes |
| <a name="input_aws_eks_cni_policy"></a> [aws\_eks\_cni\_policy](#input\_aws\_eks\_cni\_policy) | n/a | `any` | n/a | yes |
| <a name="input_aws_eks_worker_node_policy"></a> [aws\_eks\_worker\_node\_policy](#input\_aws\_eks\_worker\_node\_policy) | n/a | `any` | n/a | yes |
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | n/a | `any` | n/a | yes |
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | n/a | `list(string)` | n/a | yes |
| <a name="input_cluster_log_types"></a> [cluster\_log\_types](#input\_cluster\_log\_types) | n/a | `list(string)` | n/a | yes |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | n/a | `any` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | n/a | `any` | n/a | yes |
| <a name="input_eks-security-group-name"></a> [eks-security-group-name](#input\_eks-security-group-name) | n/a | `any` | n/a | yes |
| <a name="input_eksClusterPolicy"></a> [eksClusterPolicy](#input\_eksClusterPolicy) | n/a | `any` | n/a | yes |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | n/a | `any` | n/a | yes |
| <a name="input_endpoint_private_access"></a> [endpoint\_private\_access](#input\_endpoint\_private\_access) | n/a | `any` | n/a | yes |
| <a name="input_endpoint_public_access"></a> [endpoint\_public\_access](#input\_endpoint\_public\_access) | n/a | `any` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | n/a | `any` | n/a | yes |
| <a name="input_force_update_version"></a> [force\_update\_version](#input\_force\_update\_version) | n/a | `any` | n/a | yes |
| <a name="input_from_port"></a> [from\_port](#input\_from\_port) | n/a | `any` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `any` | n/a | yes |
| <a name="input_key_arn"></a> [key\_arn](#input\_key\_arn) | n/a | `any` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | n/a | `any` | n/a | yes |
| <a name="input_max_unavailable"></a> [max\_unavailable](#input\_max\_unavailable) | n/a | `any` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | n/a | `any` | n/a | yes |
| <a name="input_node_group_name"></a> [node\_group\_name](#input\_node\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | n/a | `list(string)` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_security_group_tags"></a> [security\_group\_tags](#input\_security\_group\_tags) | n/a | `map(string)` | n/a | yes |
| <a name="input_to_port"></a> [to\_port](#input\_to\_port) | n/a | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami_type"></a> [ami\_type](#output\_ami\_type) | n/a |
| <a name="output_capacity_type"></a> [capacity\_type](#output\_capacity\_type) | n/a |
| <a name="output_disk_size"></a> [disk\_size](#output\_disk\_size) | n/a |
| <a name="output_eks_id"></a> [eks\_id](#output\_eks\_id) | n/a |
| <a name="output_eks_node_group_status"></a> [eks\_node\_group\_status](#output\_eks\_node\_group\_status) | n/a |
| <a name="output_identity-oidc-issuer"></a> [identity-oidc-issuer](#output\_identity-oidc-issuer) | n/a |
| <a name="output_instance_types"></a> [instance\_types](#output\_instance\_types) | n/a |
| <a name="output_node_group_name"></a> [node\_group\_name](#output\_node\_group\_name) | n/a |
<!-- END_TF_DOCS -->