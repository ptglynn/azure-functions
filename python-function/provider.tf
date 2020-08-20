# Configure the Providers
provider "azurerm" {
  features {
  }
}

resource "random_pet" "random_pet" {
}

resource "random_string" "random_string" {
  length      = 13
  min_numeric = 13
  special     = false
}