resource "azurerm_application_insights" "application_insights" {
  name                = "service-tags"
  location            = azurerm_resource_group.resource-group.location
  resource_group_name = azurerm_resource_group.resource-group.name
  application_type    = "web"
}