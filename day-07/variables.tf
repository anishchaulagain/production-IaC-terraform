variable "backend_instance" {
    default = {
        ami = "ami-04b3c39a8a1c62b76"
        instance_type = "t3.micro"
        count = 1
    }
    type = object({
        ami = string
        instance_type = string
        count = number
    })
}