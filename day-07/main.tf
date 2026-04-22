terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

resource "aws_instance" "backend-server" {
  ami = var.backend_instance.ami
  instance_type = var.backend_instance.instance_type
  count = var.backend_instance.count

  tags = {
    Name = "prod-backend-server-${count.index}"
  }
  lifecycle {
    create_before_destroy = false
  }
}

