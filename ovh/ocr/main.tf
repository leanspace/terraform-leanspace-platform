data "ovh_cloud_project_capabilities_containerregistry_filter" "regcap" {
  service_name = var.project_id
  plan_name    = var.container_registry_plan_name
  region       = var.region

}

resource "ovh_cloud_project_containerregistry" "container_registry" {
  service_name = data.ovh_cloud_project_capabilities_containerregistry_filter.regcap.service_name
  plan_id      = data.ovh_cloud_project_capabilities_containerregistry_filter.regcap.id
  region       = data.ovh_cloud_project_capabilities_containerregistry_filter.regcap.region
  name         = var.container_registry_name
}

resource "ovh_cloud_project_containerregistry_user" "container_registry_user" {
  service_name = ovh_cloud_project_containerregistry.container_registry.service_name
  registry_id  = ovh_cloud_project_containerregistry.container_registry.id
  email        = var.container_registry_user_email
  login        = var.container_registry_user_name
}