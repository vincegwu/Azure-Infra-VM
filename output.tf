# Outputs
output "vm_info" {
  description = "Public IPs and their roles"
  value = {
    for idx, ip in azurerm_public_ip.pip[*].ip_address :
    azurerm_linux_virtual_machine.vm[idx].name => {
      ip   = ip
      role = local.roles[idx]
    }
  }
}

output "ssh_commands" {
  description = "SSH commands to access each VM"
  value = [
    for idx, ip in azurerm_public_ip.pip[*].ip_address :
    "ssh ${var.admin_username}@${ip}"
  ]
}
