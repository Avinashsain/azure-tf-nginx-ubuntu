# ============================================================
# outputs.tf - values Terraform prints after "apply"
# View anytime with:  terraform output
# ============================================================

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "vm_name" {
  description = "Name of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "public_ip" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "website_url" {
  description = "Open this in your browser to see Hello World"
  value       = "http://${azurerm_public_ip.pip.ip_address}"
}

output "ssh_command" {
  description = "Copy-paste this to connect to the VM"
  value       = "ssh azureuser@${azurerm_public_ip.pip.ip_address}"
}