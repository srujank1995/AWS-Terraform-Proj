//********************************* VPC Block *********************************//
resource "aws_vpc" "myVpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    name = "myVpc"
  }
}

//********************************* Subnet Block *********************************//
resource "aws_subnet" "pb_sn" {
  vpc_id                  = aws_vpc.myVpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1"

  tags = {
    name = "pb_sn1"
  }
}

//********************************* Security Group Block *********************************//

resource "aws_security_group" "sg" {
  vpc_id      = aws_vpc.myVpc.id
  name        = "my-sg"
  description = "Public Security"

  ingress = {
    from_port  = 22
    to_port    = 22
    protocal   = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }
  egress = {
    from_port  = 0
    to_port    = 0
    protocal   = "-1"
    cidr_block = ["0.0.0.0/0"]
  }

}
