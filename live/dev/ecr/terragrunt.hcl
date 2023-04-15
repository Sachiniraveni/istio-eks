include "root" {
  path = find_in_parent_folders()
}


terraform {
  source = "../../../modules/ecr"
}

inputs = {
  aws_account_name                = "istio"
  env_name                        = "dev"
  region                          = "us-east-1"
  repository_name                 = "istio-dev"
  scan_on_push                    = true
  image_tag_mutability            = "IMMUTABLE"
  scan_type                       = "ENHANCED"
  scan_frequency                  =  "CONTINUOUS_SCAN"
  repo_filter                     = "*dev"
  filter_type                     = "WILDCARD"
  qa_filter                       = "*qa"

  ecr_tags = {
    Project     = "istio"
    Environment = "dev"

 }
}

