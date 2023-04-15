
output "cluster_autoscaler" {
  value = aws_iam_role.eks_cluster_autoscaler.arn
}

output "autoscaler_role" {
  value = aws_iam_role.eks_cluster_autoscaler.name
}