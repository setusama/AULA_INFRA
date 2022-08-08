resource "azurerm_public_ip" "ST-PUBLICIP" {
  name                = "ST-PUBLICIP"
  location            = azurerm_resource_group.ST-INFRA.location
  resource_group_name = azurerm_resource_group.ST-INFRA.name
  allocation_method   = "Static"

  tags = {
    turma       = "ST"
    disciplina  = "infra cloud"
    professor   = "joão"
  }
}