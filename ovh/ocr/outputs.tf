output "ovh_registry_id" {
  value = ovh_cloud_project_containerregistry.container_registry.id
}

output "ovh_registry_name" {
  value = ovh_cloud_project_containerregistry.container_registry.name
}

output "ovh_registry_url" {
  value = ovh_cloud_project_containerregistry.container_registry.url
}

output "ovh_registry_user_name" {
  value = ovh_cloud_project_containerregistry_user.container_registry_user.user
}

output "ovh_registry_user_password" {
  value     = ovh_cloud_project_containerregistry_user.container_registry_user.password
  sensitive = true
}