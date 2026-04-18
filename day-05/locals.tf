locals {
  bucket_name = var.bucket_name
  tfstate_key = "${var.environment}/terraform.tfstate"
}