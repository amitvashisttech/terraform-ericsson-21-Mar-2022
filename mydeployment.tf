module "net" { 
   source = "./19-Modules/modules/network"
   my_rg_name = "mydevops"
   my_loc     = "eastus"
   my_vpc_cidr = ["192.168.0.0/16"]
   my_vpc_subnet_cidr = ["192.168.1.0/24"]
   my_vm_count = 2
}

module "compute" { 
   source = "./19-Modules/modules/compute"
   my_rg_name = "mydevops"
   my_loc     = "eastus"
   my_vm_count = 2
   my_nic_id   = module.net.my_nic
}
