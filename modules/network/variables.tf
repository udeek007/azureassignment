variable "prefix" {
  description = "Prefix for naming"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnets" {
  description = "List of subnets with name and address_prefix"
  type = list(object({
    name           = string
    address_prefix = string
  }))
}
