
variable "region" {}

variable "env_name" {}
variable "aws_account_name" {}
variable "repository_name" {}
variable "ecr_tags" {
  type = map(string)
}
variable "scan_on_push" {}
variable "image_tag_mutability" {}
variable "scan_type" {}
variable "scan_frequency" {}
variable "repo_filter" {
}
variable "filter_type" {}

variable "qa_filter" {}