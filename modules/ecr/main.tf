#tfsec:ignore:aws-ecr-repository-customer-key
#tfsec:ignore:aws-ecr-enforce-immutable-repository
resource "aws_ecr_repository" "veritas-repo" {
  name = var.repository_name
  image_tag_mutability = var.image_tag_mutability
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  tags = var.ecr_tags
}

resource "aws_ecr_registry_scanning_configuration" "security" {
  scan_type = var.scan_type

  rule {
    scan_frequency = var.scan_frequency
    repository_filter {
      filter      = var.repo_filter
      filter_type = var.filter_type
    }
    repository_filter {
      filter      = var.qa_filter
      filter_type = var.filter_type
    }
  }
}