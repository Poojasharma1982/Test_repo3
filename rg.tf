  # module "resource-rg-module" {
  # source  = "app.terraform.io/Pooja1892/resource-rg-module/azurerm"
  # version = "1.0.4"
   # rg-eastus2-name = var.prov-rg-eastus2-name
    # rg-centralus-name = var.prov-rg-centralus-name
  # insert required variables here
# }
    module "resource-rg-module" {
  source  = "app.terraform.io/Pooja1892/resource-rg-module/azurerm"
  version = "1.0.5"
  rg-eastus2-name = var.prov-rg-eastus2-name
  # insert required variables here
}
module "vnet-module" {
  source  = "app.terraform.io/Pooja1892/vnet-module/azurerm"
  version = "1.1.3"
  vnet_name = var.prov-vnet_name
  vnet_address = var.prov-vnet_address
  rg_name = var.prov-rg-eastus2-name
  # insert required variables here
}
  
  module "subnet" {
  source  = "app.terraform.io/Pooja1892/subnet/azurerm"
  version = "1.0.6" 
  vnet_name_new =var.prov-vnet_name
  #vnet_address_new = var.prov-vnet_address
  rg_name_new = var.prov-rg-eastus2-name
  subnet1-name = var.prov-subnet1-name
  subnet1-address = var.prov-subnet1-address
  # insert required variables here
}
