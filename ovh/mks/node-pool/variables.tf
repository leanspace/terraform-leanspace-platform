variable "cluster_id" {
  description = "The ID of the MKS cluster."
  type        = string
}

variable "project_id" {
  description = "The OVH Cloud project ID"
  type        = string
}

variable "node_instance_type" {
  description = "The type of node instances to deploy in the node pool."
  type        = string
}

variable "desired_nodes" {
  description = "The desired number of nodes in the node pool."
  type        = number
}

variable "max_nodes" {
  description = "The maximum number of nodes in the node pool."
  type        = number
}

variable "min_nodes" {
  description = "The minimum number of nodes in the node pool."
  type        = number
}

variable "environment" {
  description = "The environment for the node pool label (e.g., dev, prod)."
  type        = string
}

variable "node_pool_name" {
  description = "The name of the node pool."
  type        = string
}

variable "nodepool_labels" {
  description = "Labels to apply to nodes in the nodepool"
  type        = map(string)
  default     = {}
}

variable "nodepool_taints" {
  description = "Taints to apply to nodes in the nodepool"
  type = list(object({
    key    = string
    value  = string
    effect = string
  }))
  default = []
}

variable "nodepool_annotations" {
  description = "Annotations to apply to nodes in the nodepool"
  type        = map(string)
  default     = {}
}

variable "nodepool_finalizers" {
  description = "Finalizers to set on the nodepool metadata"
  type        = list(string)
  default     = []
}

variable "enable_nodepool_template" {
  description = "Whether to include the template block (labels/taints)."
  type        = bool
  default     = false
}
