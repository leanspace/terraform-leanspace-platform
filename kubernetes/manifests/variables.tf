variable "manifest_path" {
  description = "Path or URL to the Kubernetes manifest."
  type        = string
}

variable "kubeconfig_data" {
  description = "Base64 encoded kubeconfig data."
  type        = string
  sensitive   = true
}

variable "cloud_provider_name" {
  description = "The name of the cloud provider."
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "kustomize_mode" {
  description = "Whether to use kustomize for the manifest."
  type        = bool
  default     = false
}

variable "apply_or_create" {
  description = "use kubectl apply or create"
  type        = string
  default     = "apply"
}