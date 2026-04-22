variable "cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet" {
  default = "10.0.1.0/24"
}

variable "project_name" {}
variable "environment" {}
variable "az" {
  default = "us-east-1a"
}
