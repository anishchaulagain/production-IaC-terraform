terraform {
  backend "s3" {
    bucket = "prod-terraform-state-bucket-v1.0.0-1644234"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


resource "aws_s3_bucket" "prod-bucket-s3-v1" {
  bucket = "prod-bucket-s3-v1.0.0-1644234"

  tags = {
    Name        = "prod-bucket-s3-v1"
    Environment = "production"
  }
}