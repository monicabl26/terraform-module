module "my-private-subnetwork" {
    source = "../../modules/private-subnetwork"
    network_id = module.network.vpc_id
    private_subnets = var.private_subnets
}