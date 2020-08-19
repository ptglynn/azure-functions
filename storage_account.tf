resource "azurerm_storage_account" "storage_account" {
  name                     = "functionsapptestsa${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.resource-group.name
  location                 = azurerm_resource_group.resource-group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
  static_website {
    index_document = "main.html" 
  }
}

#resource "azurerm_storage_container" "storage-container" {
#  name                  = "spam"
#  storage_account_name  = azurerm_storage_account.storage_account.name
#  container_access_type = "container"
#}