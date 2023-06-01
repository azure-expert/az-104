# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  //subscription_id = "4c47f24a-8c45-44b9-a91e-26f16dc9b309"
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "brazil south"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}