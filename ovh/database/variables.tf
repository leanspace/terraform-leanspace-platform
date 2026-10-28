variable "project_id" {
  description = "OVH Cloud project ID"
  type        = string
}

variable "description" {
  description = "Description of the database service"
  type        = string
}

variable "engine" {
  description = "Database engine (e.g., postgresql)"
  type        = string
  default     = "postgresql"
}

variable "db_version" {
  description = "Version of the database engine"
  type        = string
}

variable "plan" {
  description = "Plan for the database service"
  type        = string
}

variable "flavor" {
  description = "Flavor of the database instance"
  type        = string
}

variable "region" {
  description = "Region to deploy the database"
  type        = string
  default     = "SBG"
}

variable "network_id" {
  description = "Network ID for the database nodes"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the database nodes"
  type        = string
}

variable "db_username" {
  description = "Username for the PostgreSQL user"
  type        = string
  default     = "postgres-admin"
}

variable "restrict_ip" {
  description = "IP address to allow access to the database"
  type        = map(string)
}
