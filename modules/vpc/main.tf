data "aws_availability_zones" "available" {
  state = "available"
}


module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"
  name = "${var.aws_account_name}-${var.env_name}-vpc"
  cidr = var.cidr
  azs             = data.aws_availability_zones.available.names
  private_subnets = [cidrsubnet(var.cidr, 8, 0), cidrsubnet(var.cidr, 8, 1), cidrsubnet(var.cidr, 8, 2)]
  public_subnets  = [cidrsubnet(var.cidr, 8, 3), cidrsubnet(var.cidr, 8, 4), cidrsubnet(var.cidr, 8, 5)]

  #public RDS subnet
  create_database_subnet_group           = var.create_database_subnet_group
  create_database_subnet_route_table     = var.create_database_subnet_route_table
  create_database_internet_gateway_route = var.create_database_internet_gateway_route
  # using single nat gateway
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  create_igw           = var.create_igw

  private_subnet_tags = var.private_subnet_tags
  public_subnet_tags = var.public_subnet_tags

 tags = var.vpc_tags
}
