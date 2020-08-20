resource "azurerm_storage_account" "storage_account" {
  name                     = "servicetags${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  static_website {
    index_document = "main.html" 
  }
}

# Temporarily disabled as the storage FW breaks the app.
#resource "azurerm_storage_account_network_rules" "storage_account_rules" {
#  resource_group_name        = azurerm_resource_group.resource_group.name
#  storage_account_name       = azurerm_storage_account.storage_account.name
#  default_action             = "Deny"
#  ip_rules                   = concat(var.permitted_ips, split(",",azurerm_function_app.service_tags.possible_outbound_ip_addresses))
#  bypass                     = ["AzureServices","Metrics","Logging"]
#  depends_on                 = [ azurerm_function_app.service_tags,] 
#}