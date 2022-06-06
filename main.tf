terraform {


required_providers {

azurerm = {

version = "=3.2.0"

}

azuread = {

source = "hashicorp/azuread"

version = "=1.6.0"

}
}
}

#provider"azuread" {
#  environment = "public"
#  tenant_id = "33440fc6-b7c7-412c-bb73-0e70b0198d5a"
#}


provider"azurerm" {
features {}
subscription_id = "62cab685-e687-4638-aab3-276b7a232ed3"
tenant_id = "33440fc6-b7c7-412c-bb73-0e70b0198d5a"
skip_provider_registration = true
}
resource "azurerm_resource_group""rg" {
name = "centralus-navi-recover-sandbox-1-rg"
location = "centralus"
}

resource "azurerm_storage_account" "sgtest" {
  name                     = "sg44ter123"
  resource_group_name      = "centralus-navi-recover-sandbox-1-rg"
  location                 = "centralus"
  account_tier             = "Standard"
  account_replication_type = "GRS"

}

resource "azurerm_storage_container" "sgc" {
  name                  = "sg44ter123con"
  storage_account_name  = "sg44ter123"
  container_access_type = "private"
}
