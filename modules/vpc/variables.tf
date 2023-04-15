variable "region" {}

variable "env_name" {}
variable "aws_account_name" {}
variable "cidr" {}

variable "enable_nat_gateway" {}
variable "single_nat_gateway" {}
variable "one_nat_gateway_per_az" {}

variable "enable_dns_hostnames" {}
variable "enable_dns_support" {}
variable "create_igw" {}


variable "vpc_tags" {
  type = map(string)
}

variable "private_subnet_tags" {
  type = map(string)
}

variable "public_subnet_tags" {
  type = map(string)
}

 variable create_database_subnet_group {
 }
  variable create_database_subnet_route_table {}
  variable create_database_internet_gateway_route {}