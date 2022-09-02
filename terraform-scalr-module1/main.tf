resource "null_resource" "executor" {
  provisioner "local-exec" {
    command = var.command
  }
