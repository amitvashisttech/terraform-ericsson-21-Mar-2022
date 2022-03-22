output "my_public_ip" { 
  value = "${azurerm_public_ip.examplepublicip.ip_address}"
}

