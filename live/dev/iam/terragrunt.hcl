include "root" {
  path = find_in_parent_folders()
}


terraform {
  source = "../../../modules/iam"
}

dependency  "eks" {
  config_path = "../eks"
}

inputs = {
  aws_account_name                = "istio"
  env_name                        = "dev"
  region                          = "us-east-1"
  EKSClusterAutoScalerRole        = "dev-eks-cluster-autoscaler"
  EKSClusterAutoScalerPolicy      = "dev-eks-cluster-autoscaler"
  oidc_url                        = dependency.eks.outputs.identity-oidc-issuer
  client_id_list                  = ["sts.amazonaws.com"]
}