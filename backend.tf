terraform {
  backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "tfdevbackendstoragee"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
