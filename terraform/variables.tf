variable "aws_access_key_id" {
  description = "aws access key id"
  type        = string
}

variable "aws_secret_access_key" {
  description = "aws secret access key"
  type        = string
}

variable "aws_region" {
  description = "aws region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "s3_bucket_name" {
  description = "s3 bucket name to upload lambda code"
  type        = string
}


variable "s3_key" {
  description = "s3 key"
  type = string
  default = "lambda/lambda.zip"
}