terraform {
  cloud {
    organization = "organization2025"
    workspaces {
      name = "learn-terraform-aws"
    }
  }

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
  required_version = "~> 1.7"
}
