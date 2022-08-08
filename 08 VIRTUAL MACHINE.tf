resource "azurerm_linux_virtual_machine" "VM" {
  name                = "VM"
  resource_group_name = azurerm_resource_group.ST-INFRA.name
  location            = azurerm_resource_group.ST-INFRA.location
  size                = "Standard_F2"
  admin_username      = "sttarabay"
  network_interface_ids = [
    azurerm_network_interface.ST-INTERFACE.id
  ]
  admin_ssh_key {
    username = "sttarabay"
    public_key = "tls_private_key.ST-SSH.public_key_openssh"
  }
  os_disk {
    name = "MyDISC"
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    version = "latest"
  }
  depends_on = [
    local_file.ST_SSH
  ]
}