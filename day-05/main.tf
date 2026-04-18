resource "aws_s3_bucket" "prod-bucket-s3-v1" {
  bucket = local.bucket_name

  tags = {
    Name        = local.bucket_name
    Environment = var.environment
  }
}

resource "aws_instance" "app_server" {
  ami           = var.ec2-instance.ami
  instance_type = var.ec2-instance.instance_type
  count = var.ec2-instance.count

  tags = {
    name        = "${var.environment}-ec2-v1"
    environment = var.environment
  }
}


output "prod-bucket-s3-v1" {
  value = aws_s3_bucket.prod-bucket-s3-v1.bucket
}