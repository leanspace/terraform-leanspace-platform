# This resource creates opensearch cluster in ovh
resource "ovh_cloud_project_database" "opensearch" {
  service_name            = var.project_id
  description             = var.cluster_name
  engine                  = "opensearch"
  version                 = var.opensearch_version
  plan                    = var.cluster_plan
  opensearch_acls_enabled = true

  dynamic "nodes" {
    for_each = range(var.cluster_node_count)
    content {
      region     = var.region
      subnet_id  = var.subnet_id
      network_id = var.network_id
    }
  }

  flavor = var.cluster_node_type
}

# This resource creates admin user for above opensearch cluster
resource "ovh_cloud_project_database_opensearch_user" "user" {
  service_name = var.project_id
  cluster_id   = ovh_cloud_project_database.opensearch.id
  acls {
    pattern    = "*"
    permission = "admin"
  }
  name = "opensearch_admin"
}

