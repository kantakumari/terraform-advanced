##we are creating provider block for azure
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    random = {
      source="hashicorp/random"
    }
    null = {
      source = "hashicorp/null"
    }
    
  }
  backend "azurerm" {
    resource_group_name = "terraformstorage"
    storage_account_name = "teeraformtfstate1234"
    container_name = "tfstatefile203"
    key = "project-1-eastus-teraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
###now if you run terraform init command as per the provider block it will download all the plugin