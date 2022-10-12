resource "aws_instance" "web" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type
  tags = {
    Name = "ec2-instance"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}