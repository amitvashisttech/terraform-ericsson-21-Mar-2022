provider "azurerm" { 
 features {}
}

# Create a Resource Group
resource "azurerm_resource_group" "frontend" {
  name     = "fronted-RG"
  location = "eastus"
  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}


data "azurerm_resources" "example" {
  depends_on = [ azurerm_resource_group.frontend ] 
  resource_group_name = "fronted-RG"
}

/*
output "resourcedetails" {
  value = data.azurerm_resources.example
}
*/





resource "azurerm_resource_group" "backend" {
  count    = 1 
  name     = "${data.azurerm_resources.example.resource_group_name}-${count.index +1}"
  location = "eastus"
  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}

