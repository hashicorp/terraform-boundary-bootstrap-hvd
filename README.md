# Boundary Bootstrap

Terraform module used by HashiCorp Professional Services to bootstrap a Boundary Controller(s). When Boundary is first deployed the database must be initialized before it can be used. During deployment of the Controller, the database is partially initialized. This module will complete initialized using the Boundary Terraform Provider.
The following resources are created:

- Global Scope
- Enable Password authentication
- create a global admin role
- create a admin user and set a password

## Prerequisites

### General

- Terraform CLI `>= 1.9` installed on workstations.
- `Git` CLI and Visual Studio Code editor installed on workstations are strongly recommended.
- Permissions to the Boundary Controller Recovery KMS key in the respective cloud
- (Optional) storage bucket that will solely be used to stand up the Boundary infrastructure via Terraform CLI (Community Edition).

### Boundary

- A Boundary Cluster deployed from one of these three modules:
  - [terraform-aws-boundary-enterprise-controller-hvd](https://registry.terraform.io/modules/hashicorp/boundary-enterprise-controller-hvd/aws/latest)
  - [terraform-azurerm-boundary-enterprise-controller-hvd](https://registry.terraform.io/modules/hashicorp/boundary-enterprise-controller-hvd/azurerm/latest)
  - [terraform-google-boundary-enterprise-controller-hvd](https://registry.terraform.io/modules/hashicorp/boundary-enterprise-controller-hvd/google/latest)

## Usage

1. Nested within the [examples](./examples/) directory are subdirectories that contain ready-made Terraform configurations of example scenarios for how to call and deploy this module. To get started, choose an example scenario. There is an example per cloud.

>📝 Note: The Azure example must be run from the Controller locally, due to issue with the provider trying to hit an internal Azure endpoint that is only accessible from within Azure.

2. Copy all of the Terraform files from your example scenario of choice into a new destination directory to create your root Terraform configuration that will manage your Boundary deployment. If you are not sure where to create this new directory, it is common for us to see users create an `environments/` directory at the root of this repo, and then a subdirectory for each Boundary instance deployment, like so:

```sh
.
└── environments
    ├── production
    │   ├── backend.tf
    │   ├── main.tf
    │   ├── outputs.tf
    │   ├── terraform.tfvars
    │   └── variables.tf
    └── sandbox
        ├── backend.tf
        ├── main.tf
        ├── outputs.tf
        ├── terraform.tfvars
        └── variables.tf
```

  >📝 Note: in this example, the user will have two separate Boundary deployments; one for their `sandbox` environment, and one for their `production` environment. This is recommended, but not required.

3. (Optional) Uncomment and update the applicable backend configuration provided in the `backend.tf` file with your own custom values. While this step is highly recommended, it is technically not required to use a remote backend config for your Boundary deployment.

4. Populate your own custom values into the `terraform.tfvars.example` file that was provided, and remove the `.example` file extension such that the file is now named `terraform.tfvars`.

5. Navigate to the directory of your newly created Terraform configuration for your Boundary Controller deployment, and run `terraform init`, `terraform plan`, and `terraform apply`.

6. After your `terraform apply` finishes successfully, you should now be able to login to the Boundary Cluster using the specified username and password.

## Module support

This open source software is maintained by the HashiCorp Technical Field Organization, independently of our enterprise products. While our Support Engineering team provides dedicated support for our enterprise offerings, this open source software is not included.

- For help using this open source software, please engage your account team.
- To report bugs/issues with this open source software, please open them directly against this code repository using the GitHub issues feature.

Please note that there is no official Service Level Agreement (SLA) for support of this software as a HashiCorp customer. This software falls under the definition of Community Software/Versions in your Agreement. We appreciate your understanding and collaboration in improving our open source projects.

## Module support

This open source software is maintained by the HashiCorp Technical Field Organization, independently of our enterprise products. While our Support Engineering team provides dedicated support for our enterprise offerings, this open source software is not included.

- For help using this open source software, please engage your account team.
- To report bugs/issues with this open source software, please open them directly against this code repository using the GitHub issues feature.

Please note that there is no official Service Level Agreement (SLA) for support of this software as a HashiCorp customer. This software falls under the definition of Community Software/Versions in your Agreement. We appreciate your understanding and collaboration in improving our open source projects.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7 |
| <a name="requirement_boundary"></a> [boundary](#requirement\_boundary) | >= 1.1.15 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_boundary"></a> [boundary](#provider\_boundary) | >= 1.1.15 |

## Resources

| Name | Type |
|------|------|
| [boundary_account_password.ampw_global_admin](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/account_password) | resource |
| [boundary_auth_method_password.global](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/auth_method_password) | resource |
| [boundary_role.global_admin](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/role) | resource |
| [boundary_role.global_anon_listing](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/role) | resource |
| [boundary_scope.global](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/scope) | resource |
| [boundary_user.ampw_global_admin](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_global_admin_login_name"></a> [global\_admin\_login\_name](#input\_global\_admin\_login\_name) | Global admin login name | `string` | n/a | yes |
| <a name="input_global_admin_password"></a> [global\_admin\_password](#input\_global\_admin\_password) | Global admin password | `string` | n/a | yes |
<!-- END_TF_DOCS -->