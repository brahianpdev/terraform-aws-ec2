provider "aws" {
    region = "us-east-1"

    // Credentials from ~/.aws/credentials (IAM user)
    access_key = ""
    secret_key = "" 
}

data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"] // hardware virtual machine (recommended)
    }

    owners = ["099720109477"] // Canonical
}

resource "aws_instance" "web" {
    ami            =  data.aws_ami.ubuntu.id 
    instance_type  =  "t2.micro"
    key_name       =  "aws-key-pair"

    tags = {
        Name = "web-server"
    }
}

output "public_ip" {
    value = aws_instance.web.public_ip
}
