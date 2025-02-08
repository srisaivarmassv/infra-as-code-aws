variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "availability_zone_1" {
  default = "us-east-1a"
}

variable "availability_zone_2" {
  default = "us-east-1b"
}

variable "availability_zone_3" {
  default = "us-east-1c"
}

variable "public_subnet_cidr_1" {
  default = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  default = "10.0.2.0/24"
}

variable "public_subnet_cidr_3" {
  default = "10.0.3.0/24"
}

variable "private_subnet_cidr_1" {
  default = "10.0.101.0/24"
}

variable "private_subnet_cidr_2" {
  default = "10.0.102.0/24"
}

variable "private_subnet_cidr_3" {
  default = "10.0.103.0/24"
}