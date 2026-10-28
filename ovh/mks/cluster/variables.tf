variable "project_id" {
  description = "The OVH Cloud project ID"
  type        = string
}
variable "region" {
  description = "The OVH Cloud region where the network will be created"
  type        = string
}

variable "private_network_id" {
  description = "The ID of the private network"
  type        = string
}

variable "private_network_subnet_id" {
  description = "The ID of the private network subnet"
  type        = string
}

variable "cluster_version" {
  description = "The version of the MKS cluster"
  type        = string
}

variable "cluster_name" {
  description = "The name of the MKS cluster"
  type        = string
}