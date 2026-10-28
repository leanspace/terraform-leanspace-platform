variable "eks_cluster_name" {
  description = "The name of the EKS cluster (leave empty for non-EKS clusters)"
  type        = string
  default     = ""
}

variable "region" {
  description = "The AWS region for the EKS cluster"
  type        = string
}

variable "kubeconfig_path" {
  description = "Path to the kubeconfig file for non-EKS clusters"
  type        = string
}