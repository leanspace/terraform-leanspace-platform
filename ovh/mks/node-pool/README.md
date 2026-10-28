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
| [ovh_cloud_project_kube_nodepool.node_pool](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_kube_nodepool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | The ID of the MKS cluster. | `string` | n/a | yes |
| <a name="input_desired_nodes"></a> [desired\_nodes](#input\_desired\_nodes) | The desired number of nodes in the node pool. | `number` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment for the node pool label (e.g., dev, prod). | `string` | n/a | yes |
| <a name="input_max_nodes"></a> [max\_nodes](#input\_max\_nodes) | The maximum number of nodes in the node pool. | `number` | n/a | yes |
| <a name="input_min_nodes"></a> [min\_nodes](#input\_min\_nodes) | The minimum number of nodes in the node pool. | `number` | n/a | yes |
| <a name="input_node_instance_type"></a> [node\_instance\_type](#input\_node\_instance\_type) | The type of node instances to deploy in the node pool. | `string` | n/a | yes |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | The name of the node pool. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The OVH Cloud project ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->