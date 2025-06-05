resource "aws_s3_bucket_object" "lambda" {
  for_each = fileset("../lambda/" , "*.zip")

  bucket = var.aws_s3_bucket
  key = var.s3_key
  source = "../lambda/${each.value}"
  etag = filemd5("../lambda/${each.value}")
}