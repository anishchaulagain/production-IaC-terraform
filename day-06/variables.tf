variable "bucket_names" {
  type = list(string)
  default = [
    "prod-bucket-s3-v1-terra-1",
    "prod-bucket-s3-v1-terra-2",
    "prod-bucket-s3-v1-terra-3"
  ]
}

variable "environment" {
  default = "dev"
}

variable "bucket_tag"{
    type = object({
        Name = string
        Environment = string
    })
    default = {
        Name = "prod-bucket-s3-v1.0.0-1644234"
        Environment = "dev"
    }
}