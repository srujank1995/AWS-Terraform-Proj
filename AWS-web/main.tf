//********************************* EC2 Block *********************************//

resource "aws_instance" "server" {
    ami = "ami-0c0e147c706360bd7"
    instance_type = "t3.micro"
    subnet_id = var.sn
    security_groups = var.sg
    tags = {
      Name="myserver"
    }
}