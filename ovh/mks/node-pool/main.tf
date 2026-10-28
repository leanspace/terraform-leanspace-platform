resource "ovh_cloud_project_kube_nodepool" "node_pool" {
  service_name = var.project_id
  kube_id      = var.cluster_id

  name = var.node_pool_name

  flavor_name   = var.node_instance_type
  desired_nodes = var.desired_nodes
  max_nodes     = var.max_nodes
  min_nodes     = var.min_nodes

  monthly_billed = false
  autoscale      = true
  dynamic "template" {
    for_each = (length(var.nodepool_labels) > 0 || length(var.nodepool_annotations) > 0 || length(var.nodepool_finalizers) > 0 || length(var.nodepool_taints) > 0) ? [1] : []
    content {
      metadata {
        labels      = var.nodepool_labels
        annotations = var.nodepool_annotations
        finalizers  = var.nodepool_finalizers
      }
      spec {
        unschedulable = false
        taints        = var.nodepool_taints
      }
    }
  }
}