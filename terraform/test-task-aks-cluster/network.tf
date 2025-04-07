# Description: This file contains the network Resources for the AKS cluster

# Main Virtual Network Resource
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
resource "azurerm_virtual_network" "test_task_aks_vnet" {
  name                = "test-task-aks-vnet"
  resource_group_name = var.resource_group
  location            = var.region
  dns_servers         = []
  address_space       = ["192.168.0.0/16"]
  tags                = var.tags

  depends_on = [azurerm_resource_group.test_task_aks_rg]

  timeouts {}
}

resource "azurerm_subnet" "test_task_aks_system_subnet" {
  name                 = "system-subnet"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.test_task_aks_vnet.name
  address_prefixes     = ["192.168.10.0/24"]
}

resource "azurerm_subnet" "test_task_aks_node01_subnet" {
  name                 = "node01-subnet"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.test_task_aks_vnet.name
  address_prefixes     = ["192.168.15.0/24"]
}
