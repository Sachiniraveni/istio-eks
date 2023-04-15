include "root" {
  path = find_in_parent_folders()
}


terraform {
  source = "../../../modules/acm"
}


inputs = {

  domain_name       = "api-dev.recoveryvault.click"
  validation_method = "DNS"
}