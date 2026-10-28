variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "minimum_node_count" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
}

variable "maximum_node_count" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
}

variable "desired_node_count" {
  description = "Desired number of nodes in the EKS node group"
  type        = number
}

variable "node_instance_types" {
  description = "List of instance types for the EKS node group"
  type        = list(string)
}

variable "node_capacity_type" {
  description = "Capacity type for the EKS node group (e.g., ON_DEMAND, SPOT)"
  type        = string
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "private_subnets" {
  description = "List of private subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "cluster_primary_security_group_id" {
  description = "Security group ID for the EKS cluster"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Security group ID for the EKS node group"
  type        = list(string)
}

variable "environment" {
  description = "Environment for the EKS node group (e.g., dev, prod)"
  type        = string
}

variable "cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.32"
}

variable "cluster_service_cidr" {
  description = "CIDR block for the EKS cluster service"
  type        = string
  default     = ""
}

variable "extra_node_group_labels" {
  description = "Additional labels to apply to the EKS managed node group"
  type        = map(string)
  default     = {}
}

variable "node_group_taints" {
  description = "Taints to apply to the nodes in the managed node group"
  type = list(object({
    key    = string
    value  = string
    effect = string
  }))
  default = []
}
