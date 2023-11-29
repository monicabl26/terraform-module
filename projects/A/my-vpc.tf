module "network" {
    source = "../../modules/vpc"
  
}

# module "firewall" {
#     source = "../../modules/firewalls"
#     network_id = module.network.vpc_id
    
# }

# module "my-private-subnetwork" {
#     source = "../../modules/private-subnetwork"
#     network_id = module.network.vpc_id
# }


# module "vmmodule" {
#   source = "../../modules/vm"
#   machine_type = "e2-medium"
#   network_id = module.network.vpc_id
#   subnet_id = module.my-private-subnetwork.subnetwork_id
# }