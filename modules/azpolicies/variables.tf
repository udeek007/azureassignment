variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "location" {
  description = "Azure region for the resource group"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "required_tags" {
  description = "List of required tags"
  type        = list(string)
  default     = ["Environment", "Owner"]
}
