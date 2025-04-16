variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
}

variable "container_name" {
  description = "Name of the container to store state"
  type        = string
  default     = "tfstate"
}

variable "resource_group_name" {
  description = "Resource group name for the storage backend"
  type        = string
}

variable "subscription_id" {
  description = "subscription_id for azure account"
  type        = string
}
