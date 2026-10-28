output "kubeconfig" {
  value     = ovh_cloud_project_kube.cluster.kubeconfig
  sensitive = true
}

output "kubeconfig_host" {
  value     = ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].host
  sensitive = true
}

output "kubeconfig_client_certificate" {
  value     = base64decode(ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].client_certificate)
  sensitive = true
}

output "kubeconfig_client_key" {
  value     = base64decode(ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].client_key)
  sensitive = true
}

output "kubeconfig_cluster_ca_certificate" {
  value     = base64decode(ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].cluster_ca_certificate)
  sensitive = true
}

output "cluster_id" {
  value = ovh_cloud_project_kube.cluster.id
}

output "cluster_name" {
  value = ovh_cloud_project_kube.cluster.name
}