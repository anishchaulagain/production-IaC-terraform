resource "aws_s3_bucket" "prod-bucket-s3-v1" {
 count = 2
  bucket = var.bucket_names[count.index]  //also can use foreach = len(var.bucket_names) and bucket = var.bucket_names[each.key]
  tags = var.bucket_tag
}