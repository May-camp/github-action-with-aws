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
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  
  s3_use_path_style           = true 

  endpoints {
    s3  = "http://127.0.0.1:4566"
    kms = "http://127.0.0.1:4566"
    sts = "http://127.0.0.1:4566"  # <-- This fixes the STS 403 error!
  }
}
