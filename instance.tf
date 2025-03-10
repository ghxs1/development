resource "aws_instance" "example_server" {
    ami = "ami-002acc74c401fa86b" # RHEL9 
    instance_type = "t2.micro"
    # security_groups = [aws_security_group.example_security_group.name]
    availability_zone = "us-east-2c"
    vpc_security_group_ids = [ aws_security_group.example_security_group.id ]
    subnet_id = aws_subnet.example_vpc_subnet.id
    tags = {
      Name = "Apache Web Server"
    key_name = aws_key_pair.rhel9_server.key_name # Need to generate a key pair for SSH access ie. ssh-keygen 
    }
    user_data = <<-EOF
                #!/bin/bash
                yum update -y
                yum install httpd -y
                systemctl start httpd
                systemctl enable httpd
                echo "<h1>Welcome to my NEW Apache Web Server"</h1>" > /var/www/html/index.html
                systemctl restart httpd
                EOF
}