resource "google_compute_network" "vpc_network" {
  project                  = "apt-memento-442605-f0" # Correct project ID
  name                     = "nadia-vpc"            # Name of the VPC
  auto_create_subnetworks  = false                  # Disable auto subnet creation
}
resource "google_compute_subnetwork" "subnet_1" {
  name          = "nadia-subnet-1"                  # Name of the subnet
  ip_cidr_range = "10.0.0.0/24"                     # Corrected key: "ip_cidr_range"
  region        = "us-central1"                     # Region for the subnet
  network       = google_compute_network.vpc_network.self_link # Use self_link for full reference
  description   = "Subnet 1 - for VPC"
}
resource "google_compute_router" "main-router" {
  name    = "nadia-router"
  region  = "us-central1"
  network = google_compute_network.vpc_network.id
}
