# Description: This file contains Azure Active Directory resources and role assignments for the AKS cluster

# Role Assignment for AKS Enterprise Application to the AKS VNET
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment
resource "azurerm_role_assignment" "aks_app_vnet_role_assignment" {
  scope                = azurerm_virtual_network.test_task_aks_vnet.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_user_assigned_identity.test_task_aks_identity.principal_id

  depends_on = [azuread_group.aks_administrators, azurerm_kubernetes_cluster.test_task_aks]

  timeouts {}
}

# AAD Group for AKS Administratorsx
# https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group
resource "azuread_group" "aks_administrators" {
  display_name     = "test-task-aks-admins"
  description      = "Azure AKS Kubernetes administrators for the test-task AKS cluster."
  security_enabled = true

  owners =  [ "f6a8ec04-488d-40b8-b7fe-09f14f6bdef1" ] # Edgar Ektibaryan

  depends_on = [azurerm_resource_group.test_task_aks_rg]
}

# Role Assignment for AKS Administrators group to the AKS cluster
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment
resource "azurerm_role_assignment" "aks_admins_role_assignment" {
  scope                = azurerm_kubernetes_cluster.test_task_aks.id
  role_definition_name = "Owner"
  principal_id         = azuread_group.aks_administrators.object_id

  depends_on = [azuread_group.aks_administrators, azurerm_kubernetes_cluster.test_task_aks]
}

# Role Assignment for AKS Administrators group to the AKS cluster
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment
resource "azurerm_role_assignment" "aks_admins_rbac_role_assignment" {
  scope                = azurerm_kubernetes_cluster.test_task_aks.id
  role_definition_name = "Azure Kubernetes Service RBAC Cluster Admin"
  principal_id         = azuread_group.aks_administrators.object_id

  depends_on = [azuread_group.aks_administrators, azurerm_kubernetes_cluster.test_task_aks]
}