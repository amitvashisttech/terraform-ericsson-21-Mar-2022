# Create a Resource Group
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
