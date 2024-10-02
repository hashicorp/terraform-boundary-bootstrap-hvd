# Boundary Bootstrap - Azure

Note: This Terraform code will need to be run on the boundary controller. This is due to an issue with the Boundary Provider where when using `azurekeyvault` authentication, it only tries the internal 169 address for the MSI endpoint instead of using the publicly accessible endpoint.

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
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | Keyvault name that contains the recovery key | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Azure tenant ID for the key vault | `string` | n/a | yes |
<!-- END_TF_DOCS -->