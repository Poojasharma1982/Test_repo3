module "resource-group-eastus" {
  source  = "app.terraform.io/Pooja1892/resource-group/azurerm"
  version = "1.0.0"
  rg-name = var.prov-rg-name
  rg-location = "eastus2"
  # insert required variables here
}
 # module "resource-group-centralus" {
 # source  = "app.terraform.io/Pooja1892/resource-group/azurerm"
 # version = "1.0.1"
 # rg-name = var.prov-rg-name
 # rg-location = "centralus"
  # insert required variables here
}
