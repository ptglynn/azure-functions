resource "azurerm_function_app" "service_tags" {
  name                      = "servicetags${random_string.random_string.result}"
  location                  = azurerm_resource_group.resource-group.location
  resource_group_name       = azurerm_resource_group.resource-group.name
  app_service_plan_id       = azurerm_app_service_plan.app_service_plan.id
  storage_account_name      = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
  version                   = "~3"
  app_settings = {
    FUNCTIONS_EXTENSION_VERSION = "~3"
    FUNCTIONS_WORKER_RUNTIME = "python"
    APPINSIGHTS_INSTRUMENTATIONKEY = azurerm_application_insights.application_insights.instrumentation_key
  }
}