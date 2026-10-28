<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_provider_name"></a> [cloud\_provider\_name](#input\_cloud\_provider\_name) | The name of the cloud provider. | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the EKS cluster. | `string` | n/a | yes |
| <a name="input_kubeconfig_data"></a> [kubeconfig\_data](#input\_kubeconfig\_data) | Base64 encoded kubeconfig data. | `string` | n/a | yes |
| <a name="input_kustomize_mode"></a> [kustomize\_mode](#input\_kustomize\_mode) | Whether to use kustomize for the manifest. | `bool` | `false` | no |
| <a name="input_manifest_path"></a> [manifest\_path](#input\_manifest\_path) | Path or URL to the Kubernetes manifest. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->