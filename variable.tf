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
variable "prov-routetable-name" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-route-name" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-rt-nsg-name" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-nsgrule-name" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-priority" {
  type = list
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-direction" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-access" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-protocol" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-source-port" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-dest-port" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-source-add-prefix" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}
variable "prov-dest-add-prefix" {
  type = string
  # default = "01000000-0000-4000-8000-000030080200"
}




