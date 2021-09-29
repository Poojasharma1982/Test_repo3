module "resource-group-new" {
  source  = "app.terraform.io/Pooja1892/resource-group-new/azurerm"
  version = "1.0.2"
  rg-name = var.prov-rg-name
  rg-location = var.prov-rg-location
  # insert required variables here
}
 # module "resource-group-centralus" {
 # source  = "app.terraform.io/Pooja1892/resource-group/azurerm"
 # version = "1.0.1"
 # rg-name = var.prov-rg-name
 # rg-location = "centralus"
  # insert required variables here
# }
  module "resource-rg-module" {
  source  = "app.terraform.io/Pooja1892/resource-rg-module/azurerm"
  version = "1.0.4"
    rg-eastus2-name = var.prov-rg-eastus2-name
    rg-centralus-name = var.prov-rg-centralus-name
  # insert required variables here
}
