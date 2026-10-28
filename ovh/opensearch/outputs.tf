output "endpoint" {
  value = ovh_cloud_project_database.opensearch.endpoints[0].uri
}

output "user_name" {
  value     = ovh_cloud_project_database_opensearch_user.user.name
  sensitive = true
}
output "user_password" {
  value     = ovh_cloud_project_database_opensearch_user.user.password
  sensitive = true
}