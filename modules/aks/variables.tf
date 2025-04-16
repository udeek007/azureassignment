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

variable "subnet_id" {
  description = "Subnet ID for AKS to connect"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for the nodes"
  type        = string
  default     = "Standard_D2ps_v6"
}

variable "environment" {
  description = "Environment tag value"
  type        = string
}

variable "owner" {
  description = "Owner tag value"
  type        = string
}
