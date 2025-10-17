output "public_ip_address_vm" {
  description = "this is the public ip of the vm"
  value = azurerm_windows_virtual_machine.windowsvm.public_ip_address
}