variable "environment" {
    default = "dev"
    type = string
}

variable "bucket_name" {
  default = "prod-bucket-s3-v1.0.0-1644234"
  type = string
}

variable "ec2-instance"{
    default = {
        ami = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
        instance_type = "t3.micro"
        count = 1
    }
}