resource "azurerm_network_interface" "ST-INTERFACE" {
  name                = "ST-INTERFACE"
  location            = azurerm_resource_group.ST-INFRA.location
  resource_group_name = azurerm_resource_group.ST-INFRA.name

  ip_configuration {
    name                            = "internal"
    subnet_id                       = azurerm_subnet.ST-SUBNET.id
    private_ip_address_allocation   = "Dynamic"
    public_ip_address_id            = azurerm_public_ip.ST-PUBLICIP.id
  }
}