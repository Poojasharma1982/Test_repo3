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
