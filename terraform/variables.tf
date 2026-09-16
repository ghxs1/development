variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS default region"
}

variable "public_key" {
  type        = string
  description = "User public key"
  default     = "~/.ssh/webserver.pub"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_ami" {
  type    = string
  description = "RHEL 9"
  default = "ami-002acc74c401fa86b"
}

variable "aws_ssh_port" {
  type    = number
  description = "SSH"
  default = 22
}

variable "aws_http_port" {
  type    = number
  description = "HTTP"
  default = 80
}

