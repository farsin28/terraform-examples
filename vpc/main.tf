
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "ap-south-1"

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
resource "aws_network_interface" "mynic" {
  subnet_id       = aws_subnet.main.id
  private_ips     = ["10.0.1.1"]

}
resource "aws_instance" "farsin_web" {
  ami           = "ami-0fdea1353c525c182" # mumbai AZ ap-south-1
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.mynic.id
    device_index         = 0
  }

