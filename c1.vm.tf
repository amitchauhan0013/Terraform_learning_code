resource "azurerm_windows_virtual_machine" "windowsvm" {
  name                = "amit-windows-vm" #change the name of the vm 
  resource_group_name = azurerm_resource_group.kyn-rg.name #change the rg name 
  location            = azurerm_resource_group.kyn-rg.location #change the location
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.web_nic.id, #change the label of the nic card
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  #change the windows image from server to windows 11 desktop

  source_image_reference {
    publisher = "microsoftwindowsdesktop"
    offer     = "windows-11"
    sku       = "win11-24h2-pro"
    version   = "latest"
  }
}