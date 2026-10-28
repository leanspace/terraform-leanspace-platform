<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | 2.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | 2.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_cloud_project_kube.cluster](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_kube) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the MKS cluster | `string` | n/a | yes |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | The version of the MKS cluster | `string` | n/a | yes |
| <a name="input_private_network_id"></a> [private\_network\_id](#input\_private\_network\_id) | The ID of the private network | `string` | n/a | yes |
| <a name="input_private_network_subnet_id"></a> [private\_network\_subnet\_id](#input\_private\_network\_subnet\_id) | The ID of the private network subnet | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The OVH Cloud project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The OVH Cloud region where the network will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | n/a |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | n/a |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | n/a |
| <a name="output_kubeconfig_client_certificate"></a> [kubeconfig\_client\_certificate](#output\_kubeconfig\_client\_certificate) | n/a |
| <a name="output_kubeconfig_client_key"></a> [kubeconfig\_client\_key](#output\_kubeconfig\_client\_key) | n/a |
| <a name="output_kubeconfig_cluster_ca_certificate"></a> [kubeconfig\_cluster\_ca\_certificate](#output\_kubeconfig\_cluster\_ca\_certificate) | n/a |
| <a name="output_kubeconfig_host"></a> [kubeconfig\_host](#output\_kubeconfig\_host) | n/a |
<!-- END_TF_DOCS -->