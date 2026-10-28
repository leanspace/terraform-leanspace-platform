# OVH Managed PostgreSQL Terraform Module

This Terraform module provisions and manages a PostgreSQL Database service on OVH Public Cloud.

## Requirements

You need the following:
* [terraform](https://www.terraform.io/) installed
* an [OVHcloud Public cloud project](https://www.ovhcloud.com/en/public-cloud/)
* OVHcloud API credentials
    * [EU](https://www.ovh.com/auth/?onsuccess=https%3A%2F%2Fwww.ovh.com%2Fauth%2FcreateToken%2F%3F)

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
| [ovh_cloud_project_database.service](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_database) | resource |
| [ovh_cloud_project_database_ip_restriction.iprestriction](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_database_ip_restriction) | resource |
| [ovh_cloud_project_database_postgresql_user.dbuser](https://registry.terraform.io/providers/ovh/ovh/2.2.0/docs/resources/cloud_project_database_postgresql_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | Username for the PostgreSQL user | `string` | `"postgres-admin"` | no |
| <a name="input_db_version"></a> [db\_version](#input\_db\_version) | Version of the database engine | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the database service | `string` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | Database engine (e.g., postgresql) | `string` | `"postgresql"` | no |
| <a name="input_flavor"></a> [flavor](#input\_flavor) | Flavor of the database instance | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | Network ID for the database nodes | `string` | n/a | yes |
| <a name="input_plan"></a> [plan](#input\_plan) | Plan for the database service | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | OVH Cloud project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region to deploy the database | `string` | `"SBG"` | no |
| <a name="input_restrict_ip"></a> [restrict\_ip](#input\_restrict\_ip) | IP address to allow access to the database | `map(string)` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID for the database nodes | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_uri"></a> [cluster\_uri](#output\_cluster\_uri) | n/a |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | n/a |
| <a name="output_user_password"></a> [user\_password](#output\_user\_password) | n/a |
<!-- END_TF_DOCS -->