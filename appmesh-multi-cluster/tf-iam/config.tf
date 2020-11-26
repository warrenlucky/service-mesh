provider "aws" {
  version = "~> 2.0"
  region  = "eu-central-1"
}

terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket         = "s3-allianzdirect-k8s-prod-ec1-tf-state-ct"
    key            = "test-iam"
    region         = "eu-central-1"
    encrypt        = true
  }
}
