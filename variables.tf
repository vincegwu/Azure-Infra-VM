variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "adhoc-automation-rg"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Admin username for Linux VMs"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "Path to your SSH public key"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "vm_sku" {
  description = "VM size"
  type        = string
  default     = "Standard_B1s"
}
