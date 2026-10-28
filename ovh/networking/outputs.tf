output "private_network_id" {
  description = "The ID of the private network"
  value       = ovh_cloud_project_gateway.gateway.network_id
}

output "private_network_subnet_id" {
  description = "The ID of the private network subnet"
  value       = ovh_cloud_project_network_private_subnet.private_subnet.id
}