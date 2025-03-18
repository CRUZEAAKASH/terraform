resource "github_repository" "firstRepoCreatedByTerraform" {
  name        = "first-repo-created-by-terraform"
  description = "Creating first Github repo by using terraform"
  visibility  = "public"
  auto_init   = true
}

resource "github_repository" "secondRepoCreatedByTerraform" {
  name        = "second-repo-created-by-terraform"
  description = "Creating second Github repo by using terraform"
  visibility  = "public"
  auto_init   = true
}
