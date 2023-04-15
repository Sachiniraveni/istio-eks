include "root" {
  path = find_in_parent_folders()
}

dependency  "rds" {
  config_path = "../rds"
}

terraform {
  source = "../../../modules//secret-manager"
}

inputs = {
    secrets = [{"name":"istio-rds-dev-secret","secret_string":dependency.rds.outputs.db_instance_password,"add_value":true},]
    aws_account_name = "istio"
    env_name = "dev"
}