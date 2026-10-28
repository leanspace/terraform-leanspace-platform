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
| [ovh_cloud_project_containerregistry.container_registry](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_containerregistry) | resource |
| [ovh_cloud_project_containerregistry_user.container_registry_user](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_containerregistry_user) | resource |
| [ovh_cloud_project_capabilities_containerregistry_filter.regcap](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/data-sources/cloud_project_capabilities_containerregistry_filter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_registry_name"></a> [container\_registry\_name](#input\_container\_registry\_name) | The name of the OVH Cloud container registry | `string` | n/a | yes |
| <a name="input_container_registry_plan_name"></a> [container\_registry\_plan\_name](#input\_container\_registry\_plan\_name) | The OVH Cloud container registry plan name | `string` | n/a | yes |
| <a name="input_container_registry_user_email"></a> [container\_registry\_user\_email](#input\_container\_registry\_user\_email) | The email of the OVH Cloud container registry user | `string` | n/a | yes |
| <a name="input_container_registry_user_name"></a> [container\_registry\_user\_name](#input\_container\_registry\_user\_name) | The name of the OVH Cloud container registry user | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The OVH Cloud project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The OVH Cloud region where the network will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ovh_registry_id"></a> [ovh\_registry\_id](#output\_ovh\_registry\_id) | n/a |
| <a name="output_ovh_registry_name"></a> [ovh\_registry\_name](#output\_ovh\_registry\_name) | n/a |
| <a name="output_ovh_registry_url"></a> [ovh\_registry\_url](#output\_ovh\_registry\_url) | n/a |
| <a name="output_ovh_registry_user_name"></a> [ovh\_registry\_user\_name](#output\_ovh\_registry\_user\_name) | n/a |
| <a name="output_ovh_registry_user_password"></a> [ovh\_registry\_user\_password](#output\_ovh\_registry\_user\_password) | n/a |
<!-- END_TF_DOCS -->