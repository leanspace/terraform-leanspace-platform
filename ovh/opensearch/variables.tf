variable "project_id" {
  description = "The OVH Cloud project ID"
  type        = string
}
variable "region" {
  description = "The OVH Cloud region where the network will be created"
  type        = string
}

variable "network_id" {
  description = "The ID of the private network"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the private network subnet"
  type        = string
}

variable "opensearch_version" {
  description = "The version of the OpenSearch cluster"
  type        = string
}

variable "cluster_plan" {
  description = "The plan of the OpenSearch cluster"
  type        = string
}

variable "cluster_node_type" {
  description = "The type of the OpenSearch nodes"
  type        = string
}

variable "cluster_node_count" {
  description = "The number of nodes in the OpenSearch cluster"
  type        = number
}

variable "cluster_name" {
  description = "The name of the OpenSearch cluster"
  type        = string
}