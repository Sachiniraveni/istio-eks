#Provides a resource to manage AWS Secrets Manager secret metadata. To manage secret rotation,
#see the aws_secretsmanager_secret_rotation resource.
#To manage a secret value, see the aws_secretsmanager_secret_version resource.

resource "aws_secretsmanager_secret" "secret" {
  for_each = { for secret in var.secrets : secret.name => secret }
  name = each.value.name

  tags = {
    environment = var.env_name
    account = var.aws_account_name
  }
}

#Provides a resource to manage AWS Secrets Manager secret version including its secret value.
#Ref: https://discuss.hashicorp.com/t/conditionally-create-resources-when-a-for-each-loop-is-involved/20841
#This resource needs to created only when add_value flag is enabled

resource "aws_secretsmanager_secret_version" "secret_version" {
  for_each = { for secret in var.secrets : secret.name => secret if secret.add_value }
  secret_id     = aws_secretsmanager_secret.secret[each.key].id
  secret_string = each.value.secret_string
}