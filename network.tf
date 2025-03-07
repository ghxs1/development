resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16" # Creates a VPC with 65,000+ IP addresses
}

resource "aws_subnet" "example_vpc_subnet" {
  vpc_id = "${aws_vpc.example_vpc.id}"
  cidr_block = "10.0.0.0/24" # Specifies 256 IP addresses from the 65,000+ IP addresses of the VPC
}

resource "aws_security_group" "example_security_group" {
    name = "example_security_group"
    vpc_id = "${aws_vpc.example_vpc.id}"
    description = "Security group for example_vpc"
}

resource "aws_vpc_security_group_ingress_rule" "example_security_group_ingress_http" {
    security_group_id = "${aws_security_group.example_security_group.id}"

    ip_protocol = "tcp"
    from_port = 80
    to_port = 80
    cidr_ipv4 = "${aws_subnet.example_vpc.cidr_block}"
}

resource "aws_vpc_security_group_ingress_rule" "example_security_group_ingress_ssh" {
    security_group_id = "${aws_security_group.example_security_group.id}"
    
    ip_protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_ipv4 = "${aws_subnet.example_vpc.cidr_block}"
}