# module "aks" {
# depends_on = [module.vnet]
#   source              = "Azure/aks/azurerm"
#   version             = "4.16.0"
#   resource_group_name = azurerm_resource_group.rg.name
#   cluster_name        = "smb-cluster"
#   kubernetes_version  = "1.22.6"
#   #   orchestrator_version = "1.23.5"
#   prefix = "prefix"

#   network_plugin                   = "azure" //Azure CNI
#   vnet_subnet_id                   = module.vnet.vnet_subnets[1]
#   os_disk_size_gb                  = 50     //Default: 50
#   sku_tier                         = "Paid" # defaults to Free  //Default: "Free"
#   enable_role_based_access_control = true   //Default: false



#   enable_auto_scaling = true //Default: false
#   #   enable_host_encryption    = true           //Default: false
#   agents_size      = "Standard_B2s" //Default: "Standard_D2s_v3"
#   agents_min_count = 1
#   agents_max_count = 1
#   agents_count     = null # Please set `agents_count` `null` while `enable_auto_scaling` is `true` to avoid possible `agents_count` changes. //Default: 2
#   agents_max_pods  = 110
#   agents_pool_name = "exnodepool" //Default: "nodepool"
#   #   agents_availability_zones = ["1", "2"]
#   agents_type = "VirtualMachineScaleSets" //Defaults to VirtualMachineScaleSets.

#   rbac_aad_managed               = true  //Default: false
#   enable_log_analytics_workspace = false //Default: true
#   #   enable_ingress_application_gateway      = true
#   #   ingress_application_gateway_name        = "aks-agw"
#   #   ingress_application_gateway_subnet_cidr = "10.52.1.0/24"

#   #   network_policy                 = "azure"
#   net_profile_dns_service_ip     = "10.0.3.10"
#   net_profile_docker_bridge_cidr = "172.17.0.1/16"
#   net_profile_service_cidr       = "10.0.3.0/24"

#   
# }
