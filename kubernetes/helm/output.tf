output "helm_release_metadata" {
  description = "Helm release metadata"
  value       = helm_release.chart.metadata
}
