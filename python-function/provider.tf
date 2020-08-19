# Configure the Providers
provider "azurerm" {
  features {
  }
}

resource "random_pet" "random_pet" {
}

resource "random_string" "random_string" {
  length      = 6
  min_lower   = 6
  special     = false
}