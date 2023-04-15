variable "region" {}

variable "env_name" {}
variable "aws_account_name" {}
variable "eks_cluster_name" {}

variable "eksClusterPolicy" {}
variable "AmazonEKSVPCResourceController" {}
variable "EksNodeGroupRoleName" {}
variable "EKSClusterServiceRole" {}

variable "aws_eks_worker_node_policy" {}

variable "aws_eks_cni_policy" {}
variable "AwsEC2ContainerRegistryReadOnly" {}

variable "ami_type" {}
variable "capacity_type" {}
variable "disk_size" {}
variable "instance_type" {}

variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}
variable "max_unavailable" {}

variable "endpoint_private_access" {}
variable "endpoint_public_access" {}
variable "node_group_name" {}
variable "force_update_version" {}

#security groups

variable "cidr_blocks" {
  type = list(string)
}

variable "protocol" {}
variable "to_port" {}
variable "from_port" {}

variable "eks-security-group-name" {}
variable "security_group_tags" {
  type = map(string)
}

variable "key_arn" {}

variable "cluster_log_types" {
  type = list(string)
}

variable "vpc_id" {}
variable "private_subnet_ids" {
  type = list(string)
}