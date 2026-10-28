variable "create_secrets" {
  type = list(object({
    mount = string
    path  = string
    data  = map(string)
  }))
  description = "List of secrets to create with mount, path, and data"
  default     = []
}

variable "read_secrets" {
  type = list(object({
    mount = string
    path  = string
  }))
  description = "List of secrets to read with mount and path"
  default     = []
}
