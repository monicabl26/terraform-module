module "vmmodule" {
  source = "../../modules/vm"
  machine_type = "e2-medium"
  network_id = module.network.vpc_id
  subnet_id = module.my-private-subnetwork.subnetwork_id
}