resource "ovh_cloud_project_database" "service" {
  service_name = var.project_id
  description  = var.description
  engine       = var.engine
  version      = var.db_version
  plan         = var.plan
  flavor       = var.flavor
  nodes {
    region     = var.region
    network_id = var.network_id
    subnet_id  = var.subnet_id
  }
}

resource "ovh_cloud_project_database_postgresql_user" "dbuser" {
  service_name = ovh_cloud_project_database.service.service_name
  cluster_id   = ovh_cloud_project_database.service.id
  name         = var.db_username
}

resource "ovh_cloud_project_database_ip_restriction" "iprestriction" {
  for_each     = var.restrict_ip
  service_name = ovh_cloud_project_database.service.service_name
  engine       = ovh_cloud_project_database.service.engine
  cluster_id   = ovh_cloud_project_database.service.id
  ip           = each.value
}
