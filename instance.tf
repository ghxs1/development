resource "aws_instance" "webserver" {
    ami = "ami-002acc74c401fa86b" # RHEL9 
    instance_type = "t2.micro"
    security_groups = [aws_security_group.example_security_group.name]
    availability_zone = "us-east-2a"
    subnet_id = aws_subnet.example_vpc_subnet.id
    tags = {
      Name = "Apache Web Server"
    }
}