resource "null_resource" "install-nginx" {
  triggers = {
    order = azurerm_linux_virtual_machine.VM.id
  }

  connection {
    type = "ssh"
    host = data.azurerm_public_ip.data-publicip.ip_address
    user = "sttarabay"
    private_key = tls_private_key.ST-SEGURO.private_key_pem
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx"
    ]
  }

  depends_on = [
    azurerm_linux_virtual_machine.VM
  ]
}