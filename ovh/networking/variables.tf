variable "project_id" {
  description = "The OVH Cloud project ID"
  type        = string
}

variable "region" {
  description = "The OVH Cloud region where the network will be created"
  type        = string
  default     = "SBG5"
}

variable "vlan_id" {
  description = "The VLAN ID for the OVH Cloud network"
  type        = string
  default     = 0
}

variable "network_cidr" {
  description = "The CIDR block for the OVH Cloud network"
  type        = string
  default     = "10.10.0.0/16"
}

variable "gateway_model" {
  description = "The model of the OVH Cloud gateway"
  type        = string
  default     = "s"
}

variable "network_gateway_name" {
  description = "The name of the OVH Cloud network gateway"
  type        = string
}

variable "private_network_name" {
  description = "The name of the OVH Cloud private network"
  type        = string
}

variable "start_network_range" {
  description = "The start of the network range"
  type        = string
  default     = "10.10.0.10"
}

variable "end_network_range" {
  description = "The end of the network range"
  type        = string
  default     = "10.10.255.254"
}