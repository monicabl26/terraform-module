resource "google_compute_instance" "default" {
  #name         = "my-instance.${count.index}"
  name          = "vm-using-modules"
  machine_type  = local.machine_type
  zone          = "us-central1-c"

 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = var.network_id
    subnetwork = var.subnet_id

    access_config {
      // Ephemeral public IP
    }
  }


}

locals {
  machine_type = "e2-micro"
}

variable "network_id" {
  description = "ID of the VPC network to associate with the firewall"
}


variable "subnet_id" {
  description = "ID of the VPC network to associate with the firewall"
}
