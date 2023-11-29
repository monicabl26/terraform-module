module "nat" {
    source = "../../modules/NAT"
    network_id = module.network.vpc_id
    # subnet_id = module.my-private-subnetwork.subnetwork_id
    subnet_id = module.my-private-subnetwork.subnetwork_id
    private_subnets = var.private_subnets
  
}