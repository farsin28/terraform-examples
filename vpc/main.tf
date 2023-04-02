provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "farsin_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "farsin_sub" {
  vpc_id = aws_vpc.farsin_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
}

resource "aws_network_interface" "farsin_nic" {
  subnet_id = aws_subnet.farsin_sub.id
}

resource "aws_instance" "farsin_ec2" {
  ami           = "ami-0fdea1353c525c182" # ap-south-1
  instance_type = "t2.micro"
  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.farsin_nic.id
  }
}
