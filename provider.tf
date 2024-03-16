terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.1"
    }
  }

  required_version = "~> 1.7.5"
}

terraform {
  backend "s3" {}
}

provider "github" {}
