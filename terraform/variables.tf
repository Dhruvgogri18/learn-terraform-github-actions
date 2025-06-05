variable "AWS_ACCESS_KEY_ID" {
  description = "AWS session access ID"
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS session secret key"
  type = string
}

variable "TF_API_TOKEN" {
  description = "secuirty token for terraform session"
  type = string
}

variable "AWS_REGION" {
  description = "AWS region to which PAS will be deployed"
  type = string
  default = "us-west-2"
}

variable "S3_BUCKET_NAME" {
    description = "AWS s3 bucket"
    type = string
}

variable "s3_key" {
  description = "s3 key"
  type = string
  default = "lambda/lambda.zip"
}