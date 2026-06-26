terraform {
  required_version = ">= 1.4.0" # Match this to your TF_VERSION

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Or whatever version you are using
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "mock_key"
  secret_key                  = "mock_secret"
}
