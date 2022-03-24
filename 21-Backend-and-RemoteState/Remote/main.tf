# Create a Resource Group
resource "azurerm_resource_group" "blue" {
  count    = 1 
  name     = "terraform-remotetest-RG-${count.index +1}"
  location = "eastus"
  tags = {
    Owner = "Terraform" 
    Team  = "Automation Team"
    Project = "Terraform Automation"
  }
}
