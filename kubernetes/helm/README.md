## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.chart](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart"></a> [chart](#input\_chart) | The name or path of the Helm chart | `string` | n/a | yes |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | The version of the Helm chart | `string` | `null` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | create namespace | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the Helm release | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The Kubernetes namespace to install the release into | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | The repository URL of the Helm chart (set to null if using local chart) | `string` | n/a | yes |
| <a name="input_values"></a> [values](#input\_values) | List of YAML configuration values or file paths for the chart | `list(any)` | `[]` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | wait for workload | `bool` | `true` | no |
| <a name="input_wait_for_jobs"></a> [wait\_for\_jobs](#input\_wait\_for\_jobs) | wait for jobs | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helm_release_metadata"></a> [helm\_release\_metadata](#output\_helm\_release\_metadata) | Helm release metadata |
