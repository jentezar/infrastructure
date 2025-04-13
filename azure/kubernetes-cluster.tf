resource "azurerm_kubernetes_cluster" "practicums_cluster" {
    name                = "practicums"
    location            = var.location
    resource_group_name = azurerm_resource_group.practicums.name
    dns_prefix         = "${var.app_name}-k8s"
    kubernetes_version = var.kubernetes_version

    default_node_pool {
        name       = "default"
        node_count = 2
        vm_size    = "Standard_D2_v2"
    }

    identity {
        type = "SystemAssigned"
    }

    tags = var.tags
}

resource "azurerm_role_assignment" "role_assignment" {
    principal_id = azurerm_kubernetes_cluster.practicums_cluster.kubelet_identity[0].object_id
    role_definition_name = "AcrPull"
    scope = azurerm_container_registry.container_registry.id
}