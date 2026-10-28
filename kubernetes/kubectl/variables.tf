variable "script_path" {
  description = "Path to the bash script that will be executed."
  type        = string
}

variable "eks_cluster_name" {
  description = "eks cluster name"
  type        = string
  default     = ""
}

variable "region" {
  description = "eks cluster region"
  type        = string
  default     = ""
}

variable "aws_profile" {
  description = "AWS CLI profile to use when running locally (optional)"
  type        = string
  default     = ""
}
