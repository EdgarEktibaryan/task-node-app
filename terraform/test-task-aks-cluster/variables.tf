# Description: This file contains variables for AKS cluster and its Resources 

### Azure

variable "region" {
  description = "Azure region to use"
  type        = string
  default     = "East US 2"
}

variable "resource_group" {
  description = "Azure region to use"
  type        = string
  default     = "test-task-aks-rg"
}

variable "tags" {
  description = "Tags to add"
  type        = map(string)
  default = {
    Environment = "TestTask",
    IAC         = "Terraform"
  }
}

variable "azure_subscription_id" {
  description = "Azure portal subscription id"
  type        = string
}

variable "azure_tenant_id" {
  description = "Azure portal tenant id"
  type        = string
}

### AKS

variable "identity_type" {
  description = "(Optional) The type of identity used for the managed cluster. Conflict with `client_id` and `client_secret`. Possible values are `SystemAssigned` and `UserAssigned`. If `UserAssigned` is set, a `user_assigned_identity_id` must be set as well."
  type        = string
  default     = "UserAssigned"
}
