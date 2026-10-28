resource "ovh_cloud_project_network_private" "private_network" {
  service_name = var.project_id
  name         = var.private_network_name
  regions      = [var.region]
  vlan_id      = var.vlan_id
}

resource "ovh_cloud_project_network_private_subnet" "private_subnet" {
  service_name = ovh_cloud_project_network_private.private_network.service_name
  network_id   = ovh_cloud_project_network_private.private_network.id
  region       = var.region
  start        = var.start_network_range
  end          = var.end_network_range
  network      = var.network_cidr
  dhcp         = true
}

resource "ovh_cloud_project_gateway" "gateway" {
  service_name = ovh_cloud_project_network_private.private_network.service_name
  name         = var.network_gateway_name
  model        = var.gateway_model
  region       = ovh_cloud_project_network_private_subnet.private_subnet.region
  network_id   = tolist(ovh_cloud_project_network_private.private_network.regions_attributes[*].openstackid)[0]
  subnet_id    = ovh_cloud_project_network_private_subnet.private_subnet.id
}