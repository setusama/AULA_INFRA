terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = ">= 3.0.1"
    }
  }
}

provider "azurerm" {
    skip_provider_registration = true
    features {}
}

resource "azurerm_resource_group" "ST-INFRA" {
  name      = "ST-INFRA"
  location  = "eastus"
}
