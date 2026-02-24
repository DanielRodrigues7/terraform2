variable "prefix" {
  description = "Prefixo para garantir nome único da Storage Account"
  type        = string
  default     = "sttfdaniel"
}

variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
  default     = "rg-tfstate-lab"
}

variable "location" {
  description = "Região onde a Storage será criada"
  type        = string
  default     = "westus2"
}

variable "container_name" {
  description = "Nome do container que guardará o state"
  type        = string
  default     = "tfstate"
}

variable "tags" {
  description = "Tags padrão"
  type        = map(string)
  default = {
    owner = "daniel"
    env   = "lab"
  }
}
