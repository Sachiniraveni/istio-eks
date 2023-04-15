include "root" {
  path = find_in_parent_folders()
  expose = true
}

terraform {
  source = "../../../modules/eks"
}


dependency  "vpc" {
  config_path = "../vpc"

  mock_outputs = {
    vpc_id = "temporary-dummy-id"
  }
}

dependency  "kms" {
  config_path = "../kms"
}


inputs = {
  vpc_id = dependency.vpc.outputs.vpc_id
  private_subnet_ids = dependency.vpc.outputs.private_subnets


  aws_account_name                = "istio"
  env_name                        = "dev"
  oidc-role                       = "S3-Readonly-OIDC-Role"
  eksClusterPolicy                = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  AmazonEKSVPCResourceController  = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  aws_eks_worker_node_policy      = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  aws_eks_cni_policy              ="arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  AwsEC2ContainerRegistryReadOnly = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  EksNodeGroupRoleName            = "dev-AWSServiceRoleAmazonEKSNodegroup"
  EKSClusterServiceRole           = "dev-eks-cluster-ServiceRole"
  ami_type                        = "AL2_x86_64"
  capacity_type                   = "ON_DEMAND"
  disk_size                       = 50
  region                          = "us-east-1"
  instance_type                   = "t3.large"
  desired_size                    = 4
  max_size                        = 9
  min_size                        = 3
  max_unavailable                 = 1
  endpoint_private_access         = false
  endpoint_public_access          = true
  eks_cluster_name                = "istio-dev-cluster"
  node_group_name                 = "istio-ng"
  force_update_version            = false
  # security group
  from_port                       = 0
    to_port                       = 0
    protocol                      = "-1"
    cidr_blocks                   = ["0.0.0.0/0"]
   eks-security-group-name        = "terraform-eks-istio-cluster-sg"

    security_group_tags = {
    Name = "terraform-eks-istio"
  }
  key_arn                         = dependency.kms.outputs.arn
  cluster_log_types               = [
        "api",
        "audit",
        "authenticator",
        "controllerManager",
        "scheduler",
    ]
}


