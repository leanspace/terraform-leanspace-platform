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
| [ovh_cloud_project_database.opensearch](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_database) | resource |
| [ovh_cloud_project_database_opensearch_user.user](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_database_opensearch_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the OpenSearch cluster | `string` | n/a | yes |
| <a name="input_cluster_node_count"></a> [cluster\_node\_count](#input\_cluster\_node\_count) | The number of nodes in the OpenSearch cluster | `number` | n/a | yes |
| <a name="input_cluster_node_type"></a> [cluster\_node\_type](#input\_cluster\_node\_type) | The type of the OpenSearch nodes | `string` | n/a | yes |
| <a name="input_cluster_plan"></a> [cluster\_plan](#input\_cluster\_plan) | The plan of the OpenSearch cluster | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | The ID of the private network | `string` | n/a | yes |
| <a name="input_opensearch_version"></a> [opensearch\_version](#input\_opensearch\_version) | The version of the OpenSearch cluster | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The OVH Cloud project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The OVH Cloud region where the network will be created | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the private network subnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | n/a |
| <a name="output_user_password"></a> [user\_password](#output\_user\_password) | n/a |
<!-- END_TF_DOCS -->