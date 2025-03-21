output "webapp_url" {
  description = "URL de la Web App déployée"
  value       = azurerm_linux_web_app.webapp.default_hostname
}
