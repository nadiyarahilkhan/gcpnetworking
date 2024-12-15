resource "google_compute_instance" "vm_instance" {
  name         = "terraform-vm"
  machine_type = "e2-medium" 
  zone         = "us-central1-a"  
  boot_disk {
    initialize_params {
      image = "4751156868206452390" 
    }
  }

network_interface {
  network    = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.subnet_1.name
  access_config {}
}
}
