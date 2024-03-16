locals {
  repos = {
    petstore-springboot-maven = {
      description = "Petstore Spring Boot Maven Demo"
    }
  }
}

resource "github_repository" "demo" {
  for_each = local.repos

  name        = each.key
  description = each.value.description

  visibility = "public"

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = false

  auto_init = true
  license_template = "apache-2.0"
  archive_on_destroy = true

  lifecycle {
    prevent_destroy = true
  }
}
