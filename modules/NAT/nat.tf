resource "google_compute_router" "router" {
  name    = "router"
  network = var.network_id

#   bgp {
#     asn = 64514
#   }
}

resource "google_compute_router_nat" "nat" {
  name                               = "router-nat"
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = var.subnet_id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
 
  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }

}
variable "network_id" {
    description = "the ID of the VPC network to associate with the nat"
  
}

variable "subnet_id" {
    description = "the ID of the subnetwork to associate with the nat "
  
}

