resource "azurerm_resource_group" "blue" {
  count = 2 
  name     = "${var.my_rg_name}-${count.index}"
  location = var.my_loc[count.index] 
  tags = {
    Owner = "Amit Vashist" 
    Team  = "DevOps Team"
    Project = "Terraform Automation"
  }
}
