resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  for_each = {for subnet in var.private_subnets : subnet.subnet_name => subnet}
  name          = each.value.subnet_name
  ip_cidr_range = each.value.subnet_ip
  region        = each.value.subnet_region
  network       =  var.network_id
  
}

variable "network_id" {
  description = "ID of the VPC network to associate with the firewall"
}

# output "subnetwork_id" {
#     value = google_compute_subnetwork.network-with-private-secondary-ip-ranges.id
  
# }

output "subnetwork_id" {
  value = [for subnet_key, subnet_value in google_compute_subnetwork.network-with-private-secondary-ip-ranges : subnet_value.id]
}

