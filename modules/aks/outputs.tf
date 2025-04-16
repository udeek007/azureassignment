output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "aks_kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
}
