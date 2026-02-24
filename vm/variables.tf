variable "prefix" {
  description = "Prefixo de nomes"
  type        = string
  default     = "danielvm"
}

variable "location" {
  description = "Região do Azure"
  type        = string
  default     = "westus2"
}

variable "vm_size" {
  description = "SKU da VM"
  type        = string
  default     = "Standard_D2ls_v5"
}

variable "admin_username" {
  description = "Usuário admin"
  type        = string
  default     = "azureuser"
}

# Opcional, caso queira manter também acesso por chave
variable "ssh_public_key" {
  description = "Chave pública SSH"
  type        = string
  default     = ""
}

variable "allowed_ssh_source" {
  description = "Origem permitida para SSH (CIDR). Em prod, use 'SEU_IP/32'"
  type        = string
  default     = "*"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {
    owner = "daniel"
    env   = "lab"
  }
}