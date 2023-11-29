variable "network_id" {
  description = "ID of the VPC network to associate with the firewall"
}

resource "google_compute_firewall" "default" {
  name    = "test-firewall11"
  network = var.network_id

  allow {
    protocol = "icmp"
  }
source_ranges = [ local.vpn_ip ]
  allow {
    protocol = "tcp"
    ports    = ["22","80", "8080", "1000-2000"]

    
  }
  direction = "INGRESS"

  

  destination_ranges = [ local.vpn_ip ]
  
}


# resource "google_compute_firewall" "default0" {
#   name    = "test-firewall12"
#   network = "default"

#   allow {
#     protocol = "icmp"
#   }
# source_ranges = [ local.vpn_ip ]
#   allow {
#     protocol = "tcp"
#     ports    = ["80", "8080", "1000-2000"]

    
#   }
#   direction = "EGRESS"

#   allow {
#     protocol = "tcp"
#     ports = [ "443" ]
#   }


#   destination_ranges = [ local.vpn_ip ]
  
# }

locals {
    vpn_ip = "0.0.0.0/0"
  
}