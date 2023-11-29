resource "google_compute_network" "custom-test" {
  name                    = "test-networks2"
  auto_create_subnetworks = false
}

output "vpc_id" {
    value = google_compute_network.custom-test.id
  
}

