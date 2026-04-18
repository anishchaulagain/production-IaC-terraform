output "bucket_names" {
  value = aws_s3_bucket.prod-bucket-s3-v1[*].bucket
}

output "bucket_tags" {
  value = aws_s3_bucket.prod-bucket-s3-v1[*].tags
}

output "bucket_id" {
  value = aws_s3_bucket.prod-bucket-s3-v1[*].id
}

output "bucket_arn" {
  value = aws_s3_bucket.prod-bucket-s3-v1[*].arn
}