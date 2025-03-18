resource "github_repository" "creating-first-repo-from-terraform" {
  name        = "repo-created-by-terraform"
  description = "Creating first Github repo by using terraform"
  visibility  = "public"
  auto_init   = true
}
