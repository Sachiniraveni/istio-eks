output "eks_id" {
  value = aws_eks_cluster.veritas-eks_cluster.id
}

output "identity-oidc-issuer" {
  value =   aws_eks_cluster.veritas-eks_cluster.identity[0].oidc[0].issuer
}

output "eks_node_group_status" {
  value = aws_eks_node_group.veritas-node-group.status
}

output "node_group_name" {
  value = aws_eks_node_group.veritas-node-group.node_group_name
}

output "disk_size" {
  value = aws_eks_node_group.veritas-node-group.disk_size
}

output "capacity_type" {
  value = aws_eks_node_group.veritas-node-group.capacity_type
}

output "ami_type" {
  value = aws_eks_node_group.veritas-node-group.ami_type
}

output "instance_types" {
  value = aws_eks_node_group.veritas-node-group.instance_types
}
