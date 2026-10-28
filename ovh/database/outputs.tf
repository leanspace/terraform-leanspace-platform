output "cluster_uri" {
  value = ovh_cloud_project_database.service.endpoints.0.uri
}

output "user_name" {
  value = ovh_cloud_project_database_postgresql_user.dbuser.name
}

output "user_password" {
  value     = ovh_cloud_project_database_postgresql_user.dbuser.password
  sensitive = true
}