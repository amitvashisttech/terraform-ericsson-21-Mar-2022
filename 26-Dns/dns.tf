resource "azurerm_resource_group" "example" {
  name     = "dns-hosted-zones"
  location = "West Europe"
}

resource "azurerm_dns_zone" "example" {
  name                = "amitvashist.mydomain.com"
  resource_group_name = azurerm_resource_group.example.name
}


resource "azurerm_dns_a_record" "test-1" {
  name                = "myvm01"
  zone_name           = azurerm_dns_zone.example.name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 300
  records             = ["10.0.100.17"]
}


resource "azurerm_dns_a_record" "test-2" {
  name                = "myvm02"
  zone_name           = azurerm_dns_zone.example.name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 300
  records             = ["10.0.100.18"]
}
