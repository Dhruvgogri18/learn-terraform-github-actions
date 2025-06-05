terraform {
  backend "s3" {}
  required_version = ">= 0.13"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.10"
    }
    vault = {
        version = "~> 2.14"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token = var.tf_api_token
  region = var.aws_region
}