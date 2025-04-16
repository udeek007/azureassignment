resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.prefix}-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.prefix}-aks"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    service_cidr       = "192.168.1.0/24"  # Must NOT overlap with VNet or subnet
    dns_service_ip     = "192.168.1.10"   # Must be inside service_cidr
  }

  tags = {
    Environment = var.environment
    Owner       = var.owner
  }
}
