# creates a remote state backend and store the state file in s3.

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "istio-terraform-backend"
    key = "dev/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "istio-terraform-state-lock-table"
  }
}

generate "provider" {
  path = "providers.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" {
  region = "us-east-1"
}
terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.2.0"
    }
  }
  required_version=">= 1.0"
}
EOF
}
