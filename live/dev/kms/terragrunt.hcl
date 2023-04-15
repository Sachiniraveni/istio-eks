include "root" {
  path = find_in_parent_folders()
}


terraform {
  source = "../../../modules/kms"
}


inputs = {
  description             = "dev-kms"
  key_usage = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
}
