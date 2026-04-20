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
        count = 2
    }
    type = object({
        ami = string
        instance_type = string
        count = number
    })
}

variable "allowed_region"{
    type = set(string)
    default = [
        "us-east-1",
        "us-west-1"
    ]
}

variable "allowed_vm_types"{
    type = list(string)
    default = [
        "t3.micro",
        "t3.small",
        "t3.medium"
    ]
}

# variable "ingress_rules"{
#     type = list(map(string))
#     default = [
#         {
#             from_port = 22
#             to_port = 22
#             protocol = "tcp"
#             cidr_blocks = ["0.0.0.0/0"]
#         },
#         {
#             from_port = 80
#             to_port = 80
#             protocol = "tcp"
#             cidr_blocks = ["0.0.0.0/0"]
#         }
#     ]
# }