resource "azurerm_application_insights" "application_insights" {
  name                = "service-tags"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  application_type    = "web"
}