resource "aws_s3_bucket" "prod-bucket-s3-v1" {
 count = 2
  bucket = var.bucket_names[count.index]
  tags = var.bucket_tag
}