 output "secret_arn" {
  value= [ for secret in aws_secretsmanager_secret.secret :  secret.arn ]
}