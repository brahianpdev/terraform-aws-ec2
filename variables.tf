locals {
  common_tags = {
    environment = var.app_env
  }
}

variable "app_env" {
  description = "The environment of the application"
  type = string
  default = "dev"
}

variable "aws_region" {
  description = "AWS region for all resources."
  type    = string
  default = "us-east-1"
}

variable "keypair_name" {
    description = "Name of the keypair to use for the instances."
    type    = string
    default   = "YOU KEYPAIR NAME.pem"
}

variable "instance_type" {
    description = "Type of instance to launch."
    type    = string
    default   = "t2.micro"
}