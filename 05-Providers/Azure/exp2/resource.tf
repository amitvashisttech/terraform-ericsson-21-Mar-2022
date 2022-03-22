resource "azurerm_resource_group" "blue" {
  count    = 1 
  name     = "Blue-RG-${count.index +1}"
  location = "eastus"
  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}



resource "azurerm_resource_group" "green" {
  count    = 1 
  name     = "Orange-RG-${count.index +1}"
  location = "westus"
  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}
