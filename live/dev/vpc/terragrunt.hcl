include "root" {
  path = find_in_parent_folders()
}


terraform {
  source = "../../../modules/vpc"
}


inputs = {
  aws_account_name                = "istio"
  env_name                        = "dev"
  region                          = "us-east-1"
  cidr                            = "10.0.0.0/16"
  #single nat gatewat variables
  enable_nat_gateway              = true
  single_nat_gateway              = true
  one_nat_gateway_per_az          = false

  enable_dns_hostnames = true
  enable_dns_support   = true
  create_igw           = true

  create_database_subnet_group           = true
  create_database_subnet_route_table     = true
  create_database_internet_gateway_route = true

  vpc_tags = {
    Terraform   = true
    Project     = "istio"
    Environment = "dev"
 }

    #public subnet tags
   public_subnet_tags = {
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/istio-dev-cluster" = "owned"
  }

  #private subnet tags
   private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/istio-dev-cluster" = "owned"
  }

}
