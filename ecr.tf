resource "aws_ecr_repository" "dev-ecr" {
  name                 = "my-dev-repo" # Repository ka naam
  image_tag_mutability = "MUTABLE"     # Optional, images ka tag mutable ya immutable
  image_scanning_configuration {
    scan_on_push = true # Push ke waqt image scanning enable karne ke liye
  }
}

output "ecr_repository_url" {
  description = "URL of the ECR Repository"
  value       = aws_ecr_repository.my_ecr_repo.repository_url
}
