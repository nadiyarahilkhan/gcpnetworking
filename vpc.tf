resource "google_compute_network" "vpc_network" {
  project                                   = "apt-memento-442605-f0"
  name                                      = "nadia-vpc"
  auto_create_subnetworks                   = false
}
