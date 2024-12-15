output "vpc_network_name" {
  value       = google_compute_network.vpc_network.name
  description = "The name of the created VPC network."
}

output "vpc_network_self_link" {
  value       = google_compute_network.vpc_network.self_link
  description = "The self-link of the created VPC network."
}

output "subnet_name" {
  value       = google_compute_subnetwork.subnet_1.name
  description = "The name of the created subnet."
}

output "subnet_ip_cidr_range" {
  value       = google_compute_subnetwork.subnet_1.ip_cidr_range
  description = "The IP CIDR range of the created subnet."
}

output "router_name" {
  value       = google_compute_router.main-router.name
  description = "The name of the created router."
}

output "firewall_name" {
  value       = google_compute_firewall.firewall.name
  description = "The name of the created firewall."
}

output "firewall_allowed_rules" {
  value       = google_compute_firewall.firewall.allow
  description = "The list of allowed firewall rules."
}

