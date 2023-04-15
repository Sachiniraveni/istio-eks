#tfsec:ignore:aws-kms-auto-rotate-keys
resource "aws_kms_key" "kms" {
  description             = var.description
  key_usage = var.key_usage
  customer_master_key_spec = var.customer_master_key_spec
}