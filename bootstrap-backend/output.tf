output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "container_name" {
  value = azurerm_storage_container.container.name
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
