variable "aws_access_key_id" {
  description = "AWS session access ID"
  type = string
}

variable "aws_secret_access_key" {
  description = "AWS session secret key"
  type = string
}

variable "tf_api_token" {
  description = "secuirty token for terraform session"
  type = string
}

variable "aws_region" {
  description = "AWS region to which PAS will be deployed"
  type = string
  default = "us-west-2"
}

variable "aws_s3_bucket" {
    description = "AWS s3 bucket"
    type = string
}

variable "s3_key" {
  description = "s3 key"
  type = string
  default = "lambda/lambda.zip"
}