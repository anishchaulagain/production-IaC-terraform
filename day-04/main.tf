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


variable "environment" {
  default = "dev"
  type = string
}

locals {
  bucket_name = "${var.environment}-bucket-s3-v1.0.0-1644234"
  tfstate_key = "${var.environment}/terraform.tfstate"
}

resource "aws_s3_bucket" "prod-bucket-s3-v1" {
  bucket = local.bucket_name

  tags = {
    Name        = local.bucket_name
    Environment = var.environment
  }
}
