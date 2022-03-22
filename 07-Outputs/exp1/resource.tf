resource "azurerm_resource_group" "blue" {
  name     = var.my_rg_name 
  location = var.my_loc 
  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}
