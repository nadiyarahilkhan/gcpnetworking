resource "google_compute_network" "vpc_network" {
  project                  = "apt-memento-442605-f0" 
  name                     = "nadia-vpc"            
  auto_create_subnetworks  = false                  
}

resource "google_compute_subnetwork" "subnet_1" {
  name          = "nadia-subnet-1"                  
  ip_cidr_range = "10.0.0.0/24"                     
  region        = "us-central1"                     
  network       = google_compute_network.vpc_network.self_link 
  description   = "Subnet 1 - for VPC"
}
