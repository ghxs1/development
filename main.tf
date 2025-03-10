resource "aws_key_pair" "rhel9_server" { 
    key_name = "rhel9_server"
    public_key = file("/Users/local-user/.ssh/webserver.pub")
  
}