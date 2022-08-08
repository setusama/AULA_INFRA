resource "azurerm_virtual_network" "ST-VNET" {
  name                = "ST-VNET"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.ST-INFRA.location
  resource_group_name = azurerm_resource_group.ST-INFRA.name
}