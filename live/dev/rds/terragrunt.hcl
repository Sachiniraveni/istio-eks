include "root" {
  path = find_in_parent_folders()
}

dependency  "vpc" {
  config_path = "../vpc"

  mock_outputs = {
    vpc_id = "temporary-dummy-id"
  }
}

terraform {
  source = "../../../modules/rds"
}


inputs = {
  database_subnets  = dependency.vpc.outputs.public_subnets
  vpc_id                 =  dependency.vpc.outputs.vpc_id
  vpc_cidr_block         =  dependency.vpc.outputs.vpc_cidr_block
  aws_account_name     = "istio"
  env_name             = "dev"
  engine               = "postgres"
  engine_version       = "14.1"
  family               = "postgres14"
  major_engine_version = "14"
  instance_class       = "db.t3.micro"
  allocated_storage     = 20
  max_allocated_storage = 100
  publicly_accessible = true
  db_name               = "istio_dev"
  db_username           = "istio_dev"
  port                  = 5432
  multi_az              = true
  maintenance_window              = "Mon:00:00-Mon:03:00"
  backup_window                   = "03:00-06:00"
  enabled_cloudwatch_logs_exports = ["postgresql", "upgrade"]
  create_cloudwatch_log_group     = true
  backup_retention_period = 30
  skip_final_snapshot     = false
  deletion_protection     = false

  performance_insights_enabled          = true
  performance_insights_retention_period = 31
  create_monitoring_role                = true
  monitoring_interval                   = 60
  monitoring_role_name                  = "postgres-db-dev"
  monitoring_role_use_name_prefix       = true
  monitoring_role_description           = "dev db monitoring roles"
  create_db_subnet_group                = true


  parameters = [
    {
      name  = "autovacuum"
      value = 1
    },
    {
      name  = "client_encoding"
      value = "utf8"
    }
  ]

    tags={
    Environment = "dev"
    Project     = "istio"
  }
}
