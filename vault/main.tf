resource "vault_kv_secret_v2" "created_secrets" {
  for_each = {
    for s in var.create_secrets : "${s.mount}:${s.path}" => s
  }

  mount     = each.value.mount
  name      = each.value.path
  data_json = jsonencode(each.value.data)
}

data "vault_kv_secret_v2" "fetched_secrets" {
  for_each = {
    for s in var.read_secrets : "${s.mount}:${s.path}" => s
  }

  mount = each.value.mount
  name  = each.value.path
}