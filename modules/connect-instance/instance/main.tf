module "connect_instance" {
  source = "../../modules/connect-instance/instance"

  instance_alias           = var.instance_alias
  identity_management_type = var.identity_management_type
  inbound_calls_enabled    = var.inbound_calls_enabled
  outbound_calls_enabled   = var.outbound_calls_enabled
  tags                     = var.tags
}