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

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for the nodes"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "environment" {
  description = "Environment tag value"
  type        = string
}

variable "owner" {
  description = "Owner tag value"
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

variable "subscription_id" {
  description = "subscription_id for azure account"
  type        = string
}