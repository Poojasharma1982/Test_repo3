  # module "resource-rg-module" {
  # source  = "app.terraform.io/Pooja1892/resource-rg-module/azurerm"
  # version = "1.0.4"
   # rg-eastus2-name = var.prov-rg-eastus2-name
    # rg-centralus-name = var.prov-rg-centralus-name
  # insert required variables here
# }
    module "resource-rg-module" {
  source  = "app.terraform.io/Pooja1892/resource-rg-module/azurerm"
  version = "1.0.6"
  rg-eastus2-name = var.prov-rg-eastus2-name
  # insert required variables here
}
module "vnet-module" {
  source  = "app.terraform.io/Pooja1892/vnet-module/azurerm"
  version = "1.1.4"
  vnet_name = var.prov-vnet_name
  vnet_address = var.prov-vnet_address
  rg_name = module.resource-rg-module.rg-name
  # insert required variables here
}
  
  module "subnet" {
  source  = "app.terraform.io/Pooja1892/subnet/azurerm"
  version = "1.0.7" 
  vnet_name_new =module.vnet-module.vnet-name
  #vnet_address_new = var.prov-vnet_address
  rg_name_new = module.resource-rg-module.rg-name
  subnet1-name = var.prov-subnet1-name
  subnet1-address = var.prov-subnet1-address
  # insert required variables here
}
# module for network security group
module "network-security_group" {
  source  = "app.terraform.io/Pooja1892/network-security_group/azurerm"
  version = "1.0.5"
  # insert required variables here
  rg-nsg-name = module.resource-rg-module.rg-name
  networksecuritygroup-name = var.prov-networksecuritygroup-name
 networksecuritygroup-location = "eastUS2" 
  subnet-id = var.prov-subnet-id  
}
    
