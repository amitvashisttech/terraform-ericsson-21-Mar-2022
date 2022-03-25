variable "my_loc" { 
  default = "eastus"
}

variable "my_rg_name" { 
  default = "RemoteTestRG"
}

variable "rg_count" { 
  type = map 
  default = { 
    default = "1"
    uat     = "2"
    prod    = "5"
    amit    = "7"
  }
}

