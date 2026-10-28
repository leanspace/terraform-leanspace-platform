# This module is used to manage Kubernetes manifests using the `kubectl` command-line tool.
resource "null_resource" "this" {
  triggers = {
    manifest_path       = var.manifest_path
    cluster_name        = var.cluster_name
    kubeconfig_data     = var.kubeconfig_data
    cloud_provider_name = var.cloud_provider_name
    kustomize_mode      = var.kustomize_mode
  }

  provisioner "local-exec" {
    command = "${path.module}/manifest-operator.sh --kustomize=${self.triggers.kustomize_mode}  ${var.apply_or_create}"
    environment = {
      MANIFEST_PATH       = self.triggers.manifest_path
      KUBECONFIG          = self.triggers.kubeconfig_data
      CLUSTER_NAME        = self.triggers.cluster_name
      CLOUD_PROVIDER_NAME = self.triggers.cloud_provider_name
    }
  }

  provisioner "local-exec" {
    when    = destroy
    command = "${path.module}/manifest-operator.sh --kustomize=${self.triggers.kustomize_mode} delete"
    environment = {
      MANIFEST_PATH       = self.triggers.manifest_path
      KUBECONFIG          = self.triggers.kubeconfig_data
      CLUSTER_NAME        = self.triggers.cluster_name
      CLOUD_PROVIDER_NAME = self.triggers.cloud_provider_name
    }
  }
}
