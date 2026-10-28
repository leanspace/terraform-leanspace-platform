variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "addon_name" {
  description = "addon name"
  type        = string
  default     = ""
}

variable "addon_version" {
  description = " addon version"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}