output "name" { 
  value = azurerm_resource_group.blue.*.name
}



output "id" { 
  value = azurerm_resource_group.blue.*.id
}
