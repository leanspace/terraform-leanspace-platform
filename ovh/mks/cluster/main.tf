resource "ovh_cloud_project_kube" "cluster" {
  service_name  = var.project_id
  name          = var.cluster_name
  version       = var.cluster_version
  update_policy = "NEVER_UPDATE"
  region        = var.region

  private_network_id = var.private_network_id
  nodes_subnet_id    = var.private_network_subnet_id
  private_network_configuration {
    default_vrack_gateway              = ""
    private_network_routing_as_default = true
  }
}