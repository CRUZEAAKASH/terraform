terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.GITHUB_TOKEN # or `GITHUB_TOKEN`
}

resource "github_repository" "creating-first-repo-from-terraform" {
  name        = "repo-created-by-terraform"
  description = "Creating first Github repo by using terraform"
  visibility  = "public"
  auto_init   = true
}
