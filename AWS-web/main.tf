//********************************* EC2 Block *********************************//

resource "aws_instance" "server" {
    ami =
    instance_type = 
    subnet_id = 
    security_groups = []
    tags = {
      Name="myserver"
    }
}