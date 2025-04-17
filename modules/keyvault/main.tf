resource "azurerm_key_vault" "kv" {
  name                = "${var.prefix}-key-valut-udk"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
  # purge_protection_enabled    = true
  # soft_delete_retention_days  = 7
  #soft_delete_enabled         = true
  purge_protection_enabled = false

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = ["Get", "Set", "Delete", "List"]
  }

  tags = {
    Environment = "Development"
    Owner       = "udk"
  }
}

data "azurerm_client_config" "current" {}
