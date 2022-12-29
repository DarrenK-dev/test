variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_2_cidr" {
  default = "10.0.2.0/24"
}

variable "key_name" {
  default     = "tests"
  description = "Name of AWS key pair"
}

variable "ami" {
  type = string
  default = "ami-084e8c05825742534"
}