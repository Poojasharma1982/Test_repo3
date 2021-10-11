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
  subnet-id = module.subnet.subnet1-id
}
module "subnet-route-table" {
  source  = "app.terraform.io/Pooja1892/subnet-route-table/azurerm"
  version = "1.0.0"
  # insert required variables here
routetable-rg-name = module.resource-rg-module.rg-name
routetable-name = var.prov-routetable-name
routetable-location = "eastUS2"
routetable-subnet-id = module.subnet.subnet1-id  
}    
module "network-security-rule" {
  source  = "app.terraform.io/Pooja1892/network-security-rule/azurerm"
  version = "1.0.1"
  # insert required variables here
  rg-name = module.resource-rg-module.rg-name
  nsg-name = module.network-security_group.mynsg1.id
  nsgrule-name = var.prov-nsgrule-name
  priority                    = var.prov-priority
  direction                   = var.prov-direction
  access                      = var.prov-access
  protocol                    = var.prov-protocol
  source_port_range           = var.prov-source-port
  destination_port_range      = var.prov-dest-port
  source_address_prefix       = var.prov-source-add-prefix
  destination_address_prefix  = var.prov-dest-add-prefix
}
module "route" {
  source  = "app.terraform.io/Pooja1892/route/azurerm"
  version = "1.0.3"
  # insert required variables here
  route-name = var.prov-route-name
  resource-group-name = module.resource-rg-module.rg-name
  route-table-name = var.prov-route-table-name
  address_prefix      = var.prov-add-prefix /list
  next_hop_type       = var.prov-next-hop   
}  
