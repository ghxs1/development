resource "local_file" "local" {
  filename = "/workspaces/development/test.txt"
  content = "This is a test document called ${var.new_variable}"
}


output "var" {
  value = var.new_variable
}

