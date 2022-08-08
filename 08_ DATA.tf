data "azurerm_public_ip" "data-publicip" {
  name = azurerm_public_ip.ST-PUBLICIP.name
  resource_group_name = azurerm_resource_group.ST-INFRA.name
}