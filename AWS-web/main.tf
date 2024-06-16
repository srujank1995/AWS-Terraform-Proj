//********************************* EC2 Block *********************************//

resource "aws_instance" "server" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t3.micro"
    subnet_id = var.sn
    security_groups = [var.sg]
    tags = {
      Name="myserver"
    }
}

