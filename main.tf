variable "name" {}
variable "location" {}
variable "username" {}
variable "password" {}

provider "azurerm" {
  features {}
}

variable "vnet_address_spacing" {
  type = list
}

variable "subnet_address_prefixes" {
  type = list
}

module "networking" {
  source  = "app.terraform.io/08012022/networking/azurerm"
  version = "~> 1.0"

  name                    = var.name
  location                = var.location
  vnet_address_spacing    = var.vnet_address_spacing
  subnet_address_prefixes = var.subnet_address_prefixes
}
