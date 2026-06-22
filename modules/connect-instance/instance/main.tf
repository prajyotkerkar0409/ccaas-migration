// Placeholder: aws_connect_instance module
resource "aws_connect_instance" "this" {
  identity_management_type = "CONNECT_MANAGED"
  instance_alias = var.instance_alias
}
