locals {
  repos = {
    demo-springboot-maven = {
      description = "Spring Boot Maven Demo"
    }
  }
}

resource "github_repository" "demo" {
  for_each = local.repos

  name        = each.key
  description = each.value.description

  visibility = "public"
}
