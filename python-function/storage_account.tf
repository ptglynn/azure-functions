resource "azurerm_storage_account" "storage_account" {
  name                     = "functionsapptestsa${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.resource-group.name
  location                 = azurerm_resource_group.resource-group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  static_website {
    index_document = "main.html" 
  }
}