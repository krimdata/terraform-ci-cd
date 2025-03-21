provider "azurerm" {
  features {}
}

# Création du groupe de ressources (optionnel, on peut le gérer dans l'environnement)
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Création du App Service Plan (F1, gratuit)
resource "azurerm_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "F1"  # Plan gratuit
}

# Création de l'Azure Linux Web App
resource "azurerm_linux_web_app" "webapp" {
  name                = var.webapp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {
    always_on = false
  }
}

output "webapp_url" {
  description = "URL par défaut de la Web App"
  value       = azurerm_linux_web_app.webapp.default_hostname
}
