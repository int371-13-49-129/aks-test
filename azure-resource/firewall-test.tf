# resource "azurerm_firewall" "fw" {
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   name                = "smb-firewall"
#   sku_tier            = "Standard"

#   ip_configuration {
#     name                 = "ip_configuration"
#     subnet_id            = module.vnet.vnet_subnets[0]
#     public_ip_address_id = azurerm_public_ip.pip.id
#   }
# }


# resource "azurerm_firewall_nat_rule_collection" "fw-nat" {
#   depends_on          = [azurerm_firewall.fw]
#   name                = "dnat-rule"
#   azure_firewall_name = azurerm_firewall.fw.name
#   resource_group_name = azurerm_resource_group.rg.name
#   priority            = 200
#   action              = "Dnat"

#   rule {
#     name                  = "dnat-80"
#     protocols             = ["TCP", "UDP"]
#     source_addresses      = ["*"]
#     destination_addresses = [azurerm_public_ip.pip.ip_address]
#     destination_ports     = ["53"]
#     translated_address    = "10.0.2.4" //Don't forgot to change (vm or ingress PrivateIp => 10.0.2.106)
#     translated_port       = 80
#   }
#   rule {
#     name                  = "dnat-443"
#     protocols             = ["TCP", "UDP"]
#     source_addresses      = ["*"]
#     destination_addresses = [azurerm_public_ip.pip.ip_address]
#     destination_ports     = ["443"]
#     translated_address    = "10.0.2.4" //Don't forgot to change (vm or ingress PrivateIp => 10.0.2.106)
#     translated_port       = 443
#   }
#   rule {
#     name                  = "dnat-22"
#     protocols             = ["TCP", "UDP"]
#     source_addresses      = ["*"]
#     destination_addresses = [azurerm_public_ip.pip.ip_address]
#     destination_ports     = ["22"]
#     translated_address    = "10.0.2.4" //Don't forgot to change (vm or ingress PrivateIp => 10.0.2.106)
#     translated_port       = 22
#   }
#   rule {
#     name                  = "dnat-3000"
#     protocols             = ["TCP", "UDP"]
#     source_addresses      = ["*"]
#     destination_addresses = [azurerm_public_ip.pip.ip_address]
#     destination_ports     = ["3000"]
#     translated_address    = "10.0.2.4" //Don't forgot to change (vm or ingress PrivateIp => 10.0.2.106)
#     translated_port       = 3000
#   }
# }


# resource "azurerm_firewall_network_rule_collection" "fw-network" {
#   depends_on          = [azurerm_firewall.fw]
#   name                = "network-rule"
#   azure_firewall_name = azurerm_firewall.fw.name
#   resource_group_name = azurerm_resource_group.rg.name
#   priority            = 200
#   action              = "Allow"

#   rule {
#     name                  = "allow-all"
#     protocols             = ["TCP", "UDP"]
#     source_addresses      = ["*"]
#     destination_addresses = ["*"]
#     destination_ports     = ["80", "443", "22", "27017", "46902", "2379"]
#   }
# }


# resource "azurerm_route_table" "fw-route" {
#   resource_group_name           = azurerm_resource_group.rg.name
#   location                      = azurerm_resource_group.rg.location
#   name                          = "smb-route-table"
#   disable_bgp_route_propagation = false

#   route {
#     name                   = "fw-route"
#     address_prefix         = "0.0.0.0/0"
#     next_hop_type          = "VirtualAppliance"
#     next_hop_in_ip_address = "10.0.1.4"
#   }

# }