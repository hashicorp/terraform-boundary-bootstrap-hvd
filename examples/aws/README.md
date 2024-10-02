# Boundary Bootstrap - AWS

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
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | AWS KMS key ID for recovery | `string` | n/a | yes |
| <a name="input_kms_region"></a> [kms\_region](#input\_kms\_region) | AWS KMS region | `string` | n/a | yes |
<!-- END_TF_DOCS -->