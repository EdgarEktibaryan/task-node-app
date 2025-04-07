data "azurerm_resource_group" "test_task_rg" {
  name = "test-task-rg"
}

data "azurerm_storage_account" "tasktfstate" {
  name                = "tasktfstate"
  resource_group_name = data.azurerm_resource_group.test_task_rg.name
}
