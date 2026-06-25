variable "aws_region" {
  description = "AWS region where the Connect instance will be created"
  type        = string
  default     = "us-east-1"
}

variable "instance_alias" {
  description = "Alias for the Connect instance"
  type        = string
}
