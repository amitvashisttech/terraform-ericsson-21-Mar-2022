provider "azurerm" { 
 features {}
  #  subscription_id = "xxxxxxxxxxxxxxxxxxxxxx"
  #  client_id = "xxxxxxxxxxxxxxxxxxxxxx"
  #  client_secret = "xxxxxxxxxxxxxxxxxxxxxx"
  #  tenant_id = "xxxxxxxxxxxxxxxxxxxxxx"

}

# Create a Resource Group
resource "azurerm_resource_group" "blue" {
  name     = "Blue-RG"
  location = "eastus"
  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}


resource "azurerm_resource_group" "green" {
  name     = "Green-RG"
  location = "eastus"

  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}

