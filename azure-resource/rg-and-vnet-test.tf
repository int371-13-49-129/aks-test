# resource "azurerm_resource_group" "rg" {
#   name     = "smb-resource"
#   location = "East Asia"
# }


# module "vnet" {
#   depends_on          = [azurerm_resource_group.rg]
#   version             = "2.6.0"
#   source              = "Azure/vnet/azurerm"
#   vnet_name           = "smb-vnet"
#   resource_group_name = azurerm_resource_group.rg.name
#   address_space       = ["10.0.0.0/16"]
#   subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24"]
#   subnet_names        = ["AzureFirewallSubnet", "workload"]


#   tags = {}

# }

# resource "azurerm_public_ip" "pip" {
#   name                = "smb-fw-pip"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }