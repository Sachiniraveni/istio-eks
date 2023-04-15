
resource "aws_iam_role" "eks-cluster-ServiceRole" {
  name = var.EKSClusterServiceRole
   assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

# the arn and the name you want to apply to:
resource "aws_iam_role_policy_attachment" "eksclusterPolicy" {
  policy_arn = var.eksClusterPolicy
  role       = aws_iam_role.eks-cluster-ServiceRole.name
}

resource "aws_iam_role_policy_attachment" "AmazonEKSVPCResourceController" {
  policy_arn = var.AmazonEKSVPCResourceController
  role       = aws_iam_role.eks-cluster-ServiceRole.name
}

resource "aws_security_group" "veritas-sg" {
  name        = var.eks-security-group-name
  description = "Cluster communication with worker nodes"
  vpc_id      = var.vpc_id  # vpc_id

#tfsec:ignore:aws-vpc-add-description-to-security-group-rule
  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  tags = var.security_group_tags
}

# creating eks cluster
#tfsec:ignore:aws-eks-encrypt-secrets
#tfsec:ignore:aws-eks-enable-control-plane-logging
resource "aws_eks_cluster" "veritas-eks_cluster" {
  name = var.eks_cluster_name
  role_arn = aws_iam_role.eks-cluster-ServiceRole.arn
  enabled_cluster_log_types = var.cluster_log_types
  #tfsec:ignore:aws-eks-no-public-cluster-access-to-cidr
  vpc_config {
    endpoint_private_access = var.endpoint_private_access
    security_group_ids = [aws_security_group.veritas-sg.id]
    endpoint_public_access = var.endpoint_public_access
    subnet_ids = var.private_subnet_ids // private_subnets
  }


  depends_on = [
    aws_iam_role_policy_attachment.eksclusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSVPCResourceController
  ]
  encryption_config {
    resources = ["secrets"]
    provider {
      key_arn = var.key_arn
    }
  }
}

