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
| [ovh_cloud_project_gateway.gateway](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_gateway) | resource |
| [ovh_cloud_project_network_private.private_network](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_network_private) | resource |
| [ovh_cloud_project_network_private_subnet.private_subnet](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_network_private_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_end_network_range"></a> [end\_network\_range](#input\_end\_network\_range) | The end of the network range | `string` | `"10.10.255.254"` | no |
| <a name="input_gateway_model"></a> [gateway\_model](#input\_gateway\_model) | The model of the OVH Cloud gateway | `string` | `"s"` | no |
| <a name="input_network_cidr"></a> [network\_cidr](#input\_network\_cidr) | The CIDR block for the OVH Cloud network | `string` | `"10.10.0.0/16"` | no |
| <a name="input_network_gateway_name"></a> [network\_gateway\_name](#input\_network\_gateway\_name) | The name of the OVH Cloud network gateway | `string` | n/a | yes |
| <a name="input_private_network_name"></a> [private\_network\_name](#input\_private\_network\_name) | The name of the OVH Cloud private network | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The OVH Cloud project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The OVH Cloud region where the network will be created | `string` | `"SBG5"` | no |
| <a name="input_start_network_range"></a> [start\_network\_range](#input\_start\_network\_range) | The start of the network range | `string` | `"10.10.0.10"` | no |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | The VLAN ID for the OVH Cloud network | `string` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_network_id"></a> [private\_network\_id](#output\_private\_network\_id) | The ID of the private network |
| <a name="output_private_network_subnet_id"></a> [private\_network\_subnet\_id](#output\_private\_network\_subnet\_id) | The ID of the private network subnet |
<!-- END_TF_DOCS -->