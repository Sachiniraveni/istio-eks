
resource "aws_iam_role" "EKSNodegroup" {
    name = var.EksNodeGroupRoleName

 assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "aws_eks_worker_node_policy" {
  policy_arn = var.aws_eks_worker_node_policy
  role       = aws_iam_role.EKSNodegroup.name
}

resource "aws_iam_role_policy_attachment" "aws_eks_cni_policy" {
  policy_arn = var.aws_eks_cni_policy
  role       = aws_iam_role.EKSNodegroup.name
}

resource "aws_iam_role_policy_attachment" "aws_ec2_container_registry_read_only" {
  policy_arn = var.AwsEC2ContainerRegistryReadOnly
  role       = aws_iam_role.EKSNodegroup.name
}

resource "aws_eks_node_group" "veritas-node-group" {
  node_group_name = var.node_group_name
  cluster_name  = aws_eks_cluster.veritas-eks_cluster.name
  node_role_arn = aws_iam_role.EKSNodegroup.arn
  subnet_ids    = var.private_subnet_ids

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  ami_type = var.ami_type
  capacity_type = var.capacity_type
  disk_size = var.disk_size
  force_update_version = var.force_update_version
  instance_types = [var.instance_type]

   update_config {
     max_unavailable = var.max_unavailable
   }
  # ensure that IAM roles are created before node group creation.
  depends_on = [
    aws_iam_role_policy_attachment.aws_eks_worker_node_policy,
    aws_iam_role_policy_attachment.aws_ec2_container_registry_read_only,
    aws_iam_role_policy_attachment.aws_eks_cni_policy
  ]
}
