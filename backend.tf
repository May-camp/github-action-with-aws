terraform {
  backend "s3" {
    bucket  = "my-terraform-state-bobby"
    region  = "us-east-1"
    key     = "s3-github-actions/terraform.tfstate"
    encrypt = true
  }
}
