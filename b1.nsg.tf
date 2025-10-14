resource "azurerm_network_security_group" "web_nsg" {
name                ="${local.resource_name_prefix}-nsg"  #sap-dev-vnet-gopal
  #this vnet need to be mapped with rg name and location
  location            = azurerm_resource_group.kyn-rg.location
  resource_group_name = azurerm_resource_group.kyn-rg.name

 

  tags = local.project_tags
}

#this nsg need to be attache with websubnet
resource "azurerm_subnet_network_security_group_association" "web_nsg_association" {
  subnet_id                 = azurerm_subnet.web_subnet.id
  network_security_group_id = azurerm_network_security_group.web_nsg.id
}