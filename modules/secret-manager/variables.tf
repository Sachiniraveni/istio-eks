variable "aws_account_name" {}
variable "env_name" {}
variable "secrets" {
  type = list(map(any))
}