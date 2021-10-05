# variables for creating a resource group
variable "prov-rg-eastus2-name" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}

# variables for creating Virtual network 
 variable "prov-vnet_name" {
  type = string
   # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-vnet_address" {
  type = list
  # default = "01000000-0000-4000-8000-000030080200"
}

# variables for creating a subnet
variable "prov-subnet1-name" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-subnet1-address" {
  type = list
  # default = "01000000-0000-4000-8000-000030080200"
}

variable "prov-networksecuritygroup-name" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
