<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db"></a> [db](#module\_db) | terraform-aws-modules/rds/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.allow_db_incoming_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | n/a | `any` | n/a | yes |
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `any` | n/a | yes |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | n/a | `any` | n/a | yes |
| <a name="input_backup_window"></a> [backup\_window](#input\_backup\_window) | n/a | `any` | n/a | yes |
| <a name="input_create_cloudwatch_log_group"></a> [create\_cloudwatch\_log\_group](#input\_create\_cloudwatch\_log\_group) | n/a | `any` | n/a | yes |
| <a name="input_create_db_subnet_group"></a> [create\_db\_subnet\_group](#input\_create\_db\_subnet\_group) | n/a | `any` | n/a | yes |
| <a name="input_create_monitoring_role"></a> [create\_monitoring\_role](#input\_create\_monitoring\_role) | n/a | `any` | n/a | yes |
| <a name="input_database_subnets"></a> [database\_subnets](#input\_database\_subnets) | n/a | `list(string)` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | n/a | `any` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | n/a | `any` | n/a | yes |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | n/a | `any` | n/a | yes |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | n/a | `list(string)` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | n/a | `any` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | n/a | `any` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | n/a | `any` | n/a | yes |
| <a name="input_family"></a> [family](#input\_family) | n/a | `any` | n/a | yes |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | n/a | `any` | n/a | yes |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | variable "vpc\_security\_group\_ids" {} | `any` | n/a | yes |
| <a name="input_major_engine_version"></a> [major\_engine\_version](#input\_major\_engine\_version) | n/a | `any` | n/a | yes |
| <a name="input_max_allocated_storage"></a> [max\_allocated\_storage](#input\_max\_allocated\_storage) | n/a | `any` | n/a | yes |
| <a name="input_monitoring_interval"></a> [monitoring\_interval](#input\_monitoring\_interval) | n/a | `any` | n/a | yes |
| <a name="input_monitoring_role_description"></a> [monitoring\_role\_description](#input\_monitoring\_role\_description) | n/a | `any` | n/a | yes |
| <a name="input_monitoring_role_name"></a> [monitoring\_role\_name](#input\_monitoring\_role\_name) | n/a | `any` | n/a | yes |
| <a name="input_monitoring_role_use_name_prefix"></a> [monitoring\_role\_use\_name\_prefix](#input\_monitoring\_role\_use\_name\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_multi_az"></a> [multi\_az](#input\_multi\_az) | n/a | `any` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | n/a | `list(map(string))` | n/a | yes |
| <a name="input_performance_insights_enabled"></a> [performance\_insights\_enabled](#input\_performance\_insights\_enabled) | n/a | `any` | n/a | yes |
| <a name="input_performance_insights_retention_period"></a> [performance\_insights\_retention\_period](#input\_performance\_insights\_retention\_period) | n/a | `any` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | n/a | `any` | n/a | yes |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | n/a | `any` | n/a | yes |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | n/a | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | n/a | yes |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | n/a | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_enhanced_monitoring_iam_role_arn"></a> [db\_enhanced\_monitoring\_iam\_role\_arn](#output\_db\_enhanced\_monitoring\_iam\_role\_arn) | The Amazon Resource Name (ARN) specifying the monitoring role |
| <a name="output_db_instance_address"></a> [db\_instance\_address](#output\_db\_instance\_address) | The address of the RDS instance |
| <a name="output_db_instance_arn"></a> [db\_instance\_arn](#output\_db\_instance\_arn) | The ARN of the RDS instance |
| <a name="output_db_instance_availability_zone"></a> [db\_instance\_availability\_zone](#output\_db\_instance\_availability\_zone) | The availability zone of the RDS instance |
| <a name="output_db_instance_cloudwatch_log_groups"></a> [db\_instance\_cloudwatch\_log\_groups](#output\_db\_instance\_cloudwatch\_log\_groups) | Map of CloudWatch log groups created and their attributes |
| <a name="output_db_instance_endpoint"></a> [db\_instance\_endpoint](#output\_db\_instance\_endpoint) | The connection endpoint |
| <a name="output_db_instance_hosted_zone_id"></a> [db\_instance\_hosted\_zone\_id](#output\_db\_instance\_hosted\_zone\_id) | The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record) |
| <a name="output_db_instance_id"></a> [db\_instance\_id](#output\_db\_instance\_id) | The RDS instance ID |
| <a name="output_db_instance_name"></a> [db\_instance\_name](#output\_db\_instance\_name) | The database name |
| <a name="output_db_instance_password"></a> [db\_instance\_password](#output\_db\_instance\_password) | The database password (this password may be old, because Terraform doesn't track it after initial creation) |
| <a name="output_db_instance_port"></a> [db\_instance\_port](#output\_db\_instance\_port) | The database port |
| <a name="output_db_instance_resource_id"></a> [db\_instance\_resource\_id](#output\_db\_instance\_resource\_id) | The RDS Resource ID of this instance |
| <a name="output_db_instance_status"></a> [db\_instance\_status](#output\_db\_instance\_status) | The RDS instance status |
| <a name="output_db_instance_username"></a> [db\_instance\_username](#output\_db\_instance\_username) | The master username for the database |
| <a name="output_db_parameter_group_arn"></a> [db\_parameter\_group\_arn](#output\_db\_parameter\_group\_arn) | The ARN of the db parameter group |
| <a name="output_db_parameter_group_id"></a> [db\_parameter\_group\_id](#output\_db\_parameter\_group\_id) | The db parameter group id |
| <a name="output_db_subnet_group_arn"></a> [db\_subnet\_group\_arn](#output\_db\_subnet\_group\_arn) | The ARN of the db subnet group |
| <a name="output_db_subnet_group_id"></a> [db\_subnet\_group\_id](#output\_db\_subnet\_group\_id) | The db subnet group name |
<!-- END_TF_DOCS -->