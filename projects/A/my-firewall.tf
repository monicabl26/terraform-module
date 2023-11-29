module "firewall" {
    source = "../../modules/firewalls"
    network_id = module.network.vpc_id
    
}