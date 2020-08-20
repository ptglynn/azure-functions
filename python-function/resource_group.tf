# ********** RESOURCE GROUP **********

# Create a resource group
resource "azurerm_resource_group" "resource_group" {
  name     = "${var.rg_base_name}-${random_pet.random_pet.id}"
  location = var.region
}