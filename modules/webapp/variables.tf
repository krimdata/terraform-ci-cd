variable "resource_group_name" {
  description = "Nom du groupe de ressources pour la Web App"
  type        = string
}

variable "location" {
  description = "Région de déploiement de la Web App"
  type        = string
}

variable "app_service_plan_name" {
  description = "Nom du service plan (App Service Plan)"
  type        = string
}

variable "webapp_name" {
  description = "Nom de l'Azure Web App"
  type        = string
}
