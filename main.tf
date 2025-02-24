terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.9"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = local.rg_name
  location = "East US 2"
}

resource "azurerm_storage_account" "example" {
  name                            = local.stn_name
  resource_group_name             = azurerm_resource_group.example.name
  location                        = azurerm_resource_group.example.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  account_kind                    = "StorageV2"
  https_traffic_only_enabled      = true
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  blob_properties {
    versioning_enabled = true

    delete_retention_policy {
      days = var.blob_delete_retention_policy_days
    }

    container_delete_retention_policy {
      days = var.blob_container_delete_retention_policy_days
    }

    change_feed_enabled           = true
    change_feed_retention_in_days = var.blob_change_feed_retention_in_days
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "states"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}
