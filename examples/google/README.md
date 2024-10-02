# Boundary Bootstrap - Google

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_boundary"></a> [boundary](#requirement\_boundary) | >= 1.1.15 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_boundary"></a> [boundary](#module\_boundary) | ../.. | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boundary_endpoint"></a> [boundary\_endpoint](#input\_boundary\_endpoint) | Boundary endpoint | `string` | n/a | yes |
| <a name="input_global_admin_login_name"></a> [global\_admin\_login\_name](#input\_global\_admin\_login\_name) | Global admin login name | `string` | n/a | yes |
| <a name="input_global_admin_password"></a> [global\_admin\_password](#input\_global\_admin\_password) | Global admin password | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Region of GCP Project to create resources in. | `string` | n/a | yes |
| <a name="input_keyring_name"></a> [keyring\_name](#input\_keyring\_name) | Region of GCP Project to create resources in. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID of GCP Project to create resources in. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of GCP Project to create resources in. | `string` | n/a | yes |
<!-- END_TF_DOCS -->