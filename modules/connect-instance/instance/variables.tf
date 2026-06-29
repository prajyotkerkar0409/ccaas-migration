variable "identity_management_type" {
  type = string
}

variable "inbound_calls_enabled" {
  type = bool
}

variable "outbound_calls_enabled" {
  type = bool
}

variable "tags" {
  type = map(string)
  default = {}
}

variable "instance_alias" {
  type = string
}