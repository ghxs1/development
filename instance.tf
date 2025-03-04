resource "aws_instance" "webserver" {
    ami = "ami-002acc74c401fa86b" # RHEL9 
    instance_type = "t2.micro"
    security_groups = [aws_security_group.example_security_group.name]
    availability_zone = "us-east-2a"
    vpc_security_group_ids = [ aws_security_group.example_security_group.vpc_id ]
    subnet_id = aws_subnet.example_vpc_subnet.id
    tags = {
      Name = "Apache Web Server"
    key_name = "" # Need to generate a key pair for SSH access ie. ssh-keygen 
    user_data = <<-EOF
                #!/bin/bash
                yum update -y
                yum install httpd -y
                systemctl start httpd
                systemctl enable httpd
                echo "<h1>Welcome to my NEW Apache Web Server by GHOS"</h1>" > /var/www/html/index.html
                systemctl restart httpd
                EOF
    }
}