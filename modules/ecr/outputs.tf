output "image_tag_mutability" {
  value = aws_ecr_repository.veritas-repo.image_tag_mutability
}

output "ecr_repo_name" {
  value = aws_ecr_repository.veritas-repo.name
}

output "image_scanning_configuration" {
  value = aws_ecr_repository.veritas-repo.image_scanning_configuration[0].scan_on_push
}
