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
| [null_resource.script_runner](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | AWS CLI profile to use when running locally (optional) | `string` | `""` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | eks cluster name | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | eks cluster region | `string` | `""` | no |
| <a name="input_script_path"></a> [script\_path](#input\_script\_path) | Path to the bash script that will be executed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_script_executed"></a> [script\_executed](#output\_script\_executed) | The path to the script that was executed. |

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
| [null_resource.script_runner](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | AWS CLI profile to use when running locally (optional) | `string` | `""` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | eks cluster name | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | eks cluster region | `string` | `""` | no |
| <a name="input_script_path"></a> [script\_path](#input\_script\_path) | Path to the bash script that will be executed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_script_executed"></a> [script\_executed](#output\_script\_executed) | The path to the script that was executed. |
<!-- END_TF_DOCS -->