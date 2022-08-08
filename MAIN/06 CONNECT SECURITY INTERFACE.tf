resource "azurerm_network_interface_security_group_association" "ST-SECURITYINTERFACE" {
  network_interface_id      = azurerm_network_interface.ST-INTERFACE.id
  network_security_group_id = azurerm_network_security_group.ST-SECURITY.id
}