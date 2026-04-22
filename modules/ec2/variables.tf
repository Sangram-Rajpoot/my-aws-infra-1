variable "vpc_id" {}
variable "subnet_id" {}

variable "project_name" {}
variable "environment" {}

variable "key_name" {}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  default = "ami-0ec10929233384c7f" # Amazon Linux (us-east-1)
}
