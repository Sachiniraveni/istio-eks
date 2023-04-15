variable "engine" {}
variable "engine_version" {}
variable "family" {}
variable "major_engine_version" {}
variable "instance_class" {}
variable "allocated_storage" {}
variable "max_allocated_storage" {}
variable "db_name" {}
variable "db_username" {}
variable "port" {}
variable "multi_az" {}
variable "database_subnets" {
  type = list(string)
}
#variable "vpc_security_group_ids" {}
variable "maintenance_window" {}
variable "backup_window" {}
variable "enabled_cloudwatch_logs_exports" {
  type = list(string)
}
variable "create_cloudwatch_log_group" {}
variable "backup_retention_period" {}
variable "skip_final_snapshot"  {}
variable "deletion_protection" {}
variable "performance_insights_enabled" {}
variable "performance_insights_retention_period" {}
variable "create_monitoring_role" {}
variable "monitoring_interval" {}
variable "monitoring_role_name" {}
variable "monitoring_role_use_name_prefix" {}
variable "monitoring_role_description" {}
variable "tags" {
  type = map(string)
}

variable "parameters" {
  type = list(map(string))
}
variable "publicly_accessible" {}

variable "vpc_id" {}
variable "vpc_cidr_block" {}

variable "aws_account_name" {}
variable "env_name" {}

variable "create_db_subnet_group" {}