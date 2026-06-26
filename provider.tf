terraform {
  required_providers {
    aws = {
      version = ">= 5.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3  = "http://localhost:4566"
    kms = "http://localhost:4566"
    # Add any other AWS services you are using here
  }
}
