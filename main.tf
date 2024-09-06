provider "github" {
  token = var.github_token
}

resource "github_repository" "my_repo" {
  name        = "simple-web-app"
  description = "A repository for the Simple Web App."
  visibility  = "public" # or "private"
}

# Optionally set the default branch
resource "github_branch_default" "default" {
  repository = git_repo.name
  branch     = "main"
}
