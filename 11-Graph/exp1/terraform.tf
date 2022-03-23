terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.63.0, <=3.65.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
    }
  }
}
