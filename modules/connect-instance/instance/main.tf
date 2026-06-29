// Placeholder: aws_connect_instance module
resource "aws_connect_instance" "this" {

  identity_management_type = var.identity_management_type
  inbound_calls_enabled    = var.inbound_calls_enabled
  outbound_calls_enabled   = var.outbound_calls_enabled
  tags                     = var.tags
}
