variable "name" {
  description = "The name of the Helm release"
  type        = string
}

variable "chart" {
  description = "The name or path of the Helm chart"
  type        = string
}

variable "repository" {
  description = "The repository URL of the Helm chart (set to null if using local chart)"
  type        = string
}

variable "namespace" {
  description = "The Kubernetes namespace to install the release into"
  type        = string
}

variable "chart_version" {
  description = "The version of the Helm chart"
  type        = string
  default     = null
}

variable "values" {
  description = "List of YAML configuration values or file paths for the chart"
  type        = list(any)
  default     = []
}

variable "create_namespace" {
  description = "create namespace"
  type        = bool
}
variable "wait" {
  description = "wait for workload"
  type        = bool
  default     = true
}

variable "wait_for_jobs" {
  description = "wait for jobs"
  type        = bool
  default     = false
}

variable "timeout" {
  description = "timeout for the Helm release"
  type        = string
  default     = "300"

}

variable "dependency_update" {
  description = "Run 'helm dependency update' before installing the chart"
  type        = bool
  default     = false
}