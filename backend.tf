terraform {
  backend "azurerm" {
    resource_group_name  = "dev-governance-rg"
    storage_account_name = "devtfstateudk"
    container_name       = "dev-tfstate-container"
    key                  = "dev.terraform.tfstate"
  }
}
