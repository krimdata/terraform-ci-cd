terraform {
  backend "azurerm" {
    resource_group_name  =  "test-rg"
    storage_account_name = "tftestbackendstorage"
    container_name       = "tfstate"
    key                  = "test/infra.tfstate"
  }
}
