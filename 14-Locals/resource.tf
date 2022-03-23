variable "project-name" { 
   default = "Terraform-Demo" 
}


locals { 
   default_name = "${join("-", tolist([var.project-name, "RG"]))}"
}


locals { 
   some_tags = { 
     Owner = "DevOps Team" 
     Project = "Terraform Automation" 
     Env     = "Production"
     Name    = local.default_name
    }
}


resource "azurerm_resource_group" "blue" { 
   #name = "${var.project-name}-backend" 
   name = "${local.default_name}-blue"
   location = "eastus" 
   tags = local.some_tags
}



resource "azurerm_resource_group" "green" { 
   name = "${local.default_name}-green"
   location = "westus" 
   tags = local.some_tags
}



resource "azurerm_resource_group" "orange" { 
   name = "${local.default_name}-orange"
   location = "westus2" 
   tags = local.some_tags
}
