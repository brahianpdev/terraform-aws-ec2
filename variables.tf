variable "aws_region" {
  description = "AWS region for all resources."
  type    = string
  default = "us-east-1"
}

variable "keypair_name" {
    description = "Name of the keypair to use for the instances."
    type    = string
    default   = "PATH TO YOUR KEYPAIR"
}

variable "instance_type" {
    description = "Type of instance to launch."
    type    = string
    default   = "t2.micro"
}