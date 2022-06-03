terraform {
  backend "azurerm" {
    resource_group_name  = "centralus-navi-recover-sandbox-1-rg"
    storage_account_name = "sg44ter123"
    container_name       = "sg44ter123con"
    key                  = "developer.terraform.tfstate"
  }
}
