output "public_ip" {
  description = "IP público"
  value       = azurerm_public_ip.pip.ip_address
}

output "ssh_command" {
  description = "SSH (se estiver com chave ou com senha habilitada)"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.pip.ip_address}"
}