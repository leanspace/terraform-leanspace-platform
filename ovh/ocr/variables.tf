variable "project_id" {
  description = "The OVH Cloud project ID"
  type        = string
}

variable "region" {
  description = "The OVH Cloud region where the network will be created"
  type        = string
}

variable "container_registry_plan_name" {
  description = "The OVH Cloud container registry plan name"
  type        = string
}

variable "container_registry_name" {
  description = "The name of the OVH Cloud container registry"
  type        = string
}

variable "container_registry_user_email" {
  description = "The email of the OVH Cloud container registry user"
  type        = string
}

variable "container_registry_user_name" {
  description = "The name of the OVH Cloud container registry user"
  type        = string
}