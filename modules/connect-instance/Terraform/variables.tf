variable "aws_region" {
  description = "AWS region where the Connect instance will be created"
  type        = string
  default     = "us-east-1"
}

variable "instance_alias" {
  description = "Alias for the Connect instance"
  type        = string
}

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