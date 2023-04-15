module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = lower("${var.aws_account_name}-${var.engine}-${var.env_name}")

  # All available versions: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
  engine               = var.engine
  engine_version       = var.engine_version
  family               = var.family
  major_engine_version = var.major_engine_version
  instance_class       = var.instance_class

  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  publicly_accessible = var.publicly_accessible

  # NOTE: Do NOT use 'user' as the value for 'username' as it throws:
  # "Error creating DB Instance: InvalidParameterValue: MasterUsername
  # user cannot be used as it is a reserved word used by the engine"
  db_name  = var.db_name
  username = var.db_username
  port     = var.port

  multi_az               = var.multi_az
  subnet_ids   = var.database_subnets
  vpc_security_group_ids = [aws_security_group.allow_db_incoming_vpc.id]

  maintenance_window              = var.maintenance_window
  backup_window                   = var.backup_window
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  create_cloudwatch_log_group     = var.create_cloudwatch_log_group

  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot
  deletion_protection     = var.deletion_protection
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_retention_period = var.performance_insights_retention_period
  create_monitoring_role                = var.create_monitoring_role
  monitoring_interval                   = var.monitoring_interval
  monitoring_role_name                  = var.monitoring_role_name
  monitoring_role_use_name_prefix       = var.monitoring_role_use_name_prefix
  monitoring_role_description           = var.monitoring_role_description
  create_db_subnet_group                = var.create_db_subnet_group

  parameters = var.parameters


  tags = var.tags
  db_option_group_tags = {
    "Sensitive" = "low"
  }
  db_parameter_group_tags = {
    "Sensitive" = "low"
  }
}
