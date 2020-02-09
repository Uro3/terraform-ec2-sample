variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  default = "10.0.0.0/24"
}

variable "az" {
  default = "ap-northeast-1a"
}

variable "ec2_instance_type" {
  default = "t3.micro"
}

variable "key_pair_name" {}
