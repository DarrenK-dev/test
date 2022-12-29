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

variable "ami" {
  type    = string
  default = "ami-084e8c05825742534"
}

# Defining Public Key
variable "public_key" {
  default = "tutorials.pub"
}
# Defining Private Key
variable "private_key" {
  default = "tutorials.pem"
}
# Definign Key Name for connection
variable "key_name" {
  default     = "tutorials"
  description = "AWS key pair named: tutorials"
}