variable "resource_group_name" {
  description = "Nom du groupe de ressources (défini par l'environnement)"
  type        = string
}

variable "location" {
  description = "Région de déploiement (défini par l'environnement)"
  type        = string
}

variable "app_service_plan_name" {
  description = "Nom du service plan pour l'App Service"
  type        = string
}

variable "webapp_name" {
  description = "Nom de l'Azure Web App"
  type        = string
}
