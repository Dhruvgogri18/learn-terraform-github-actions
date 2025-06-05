resource "aws_s3_bucket_object" "lambda" {
  for_each = fileset("../lambda/" , "*.zip")

  bucket = var.s3_bucket_name
  key = var.s3_key
  source = "../lambda/${each.value}"
  etag = filemd5("../lambda/${each.value}")
}