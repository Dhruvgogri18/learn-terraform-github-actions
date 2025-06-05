terraform {
  backend "s3" {
    bucket = "terraform-test-21f49187"
    key    = "lambda/terraform.tfstate"
    region = "us-west-2"
  }
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
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  token = var.TF_API_TOKEN
  region = var.AWS_REGION
}