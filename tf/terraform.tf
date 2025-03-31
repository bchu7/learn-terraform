terraform {
  # HCP Terraform
  cloud {
    organization = "organization2025"
    workspaces {
      name = "learn-terraform-aws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.0-alpha1"
    }

    # # example all minor versions greater than 1.2
    # random = {
    #   source  = "hashicorp/random"
    #   version = "~> 1.2"
    # }

    # # example version values multiple conditions
    # random = {
    #   source  = "hashicorp/random"
    #   version = "> 1.2.0, < 2.0.0, != 1.4.0"
    # }
  }
}

provider "aws" {
  region = "eu-west-1"
}
