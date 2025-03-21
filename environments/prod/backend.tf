terraform {
  backend "azurerm" {
    resource_group_name  =  "prod-rg"
    storage_account_name = "tfprodbackendstorage"
    container_name       = "tfstate"
    key                  = "prod/infra.tfstate"
  }
}
