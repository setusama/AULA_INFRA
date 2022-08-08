resource "azurerm_subnet" "ST-SUBNET" {
  name                  = "ST-SUBNET"
  resource_group_name   = azurerm_resource_group.ST-INFRA.name
  virtual_network_name  = azurerm_virtual_network.ST-VNET.name
  address_prefixes      = ["10.0.1.0/24"]
}