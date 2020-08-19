output "Service_App_Name" {
  value = azurerm_function_app.service_tags.name
}

output "Service_Tag_URL" {
  value = azurerm_storage_account.storage_account.primary_web_endpoint
}