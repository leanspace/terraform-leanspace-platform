resource "helm_release" "chart" {
  name              = var.name
  chart             = var.chart
  repository        = var.repository
  namespace         = var.namespace
  create_namespace  = var.create_namespace
  wait              = var.wait
  wait_for_jobs     = var.wait_for_jobs
  version           = var.chart_version
  values            = var.values
  timeout           = var.timeout
  dependency_update = var.dependency_update
}
