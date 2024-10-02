# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = ">= 1.1.15"
    }
  }
}

provider "boundary" {
  addr             = var.boundary_endpoint
  recovery_kms_hcl = <<EOT
  kms "azurekeyvault" {
    purpose    = "recovery"
    tenant_id  = "${var.tenant_id}"
    vault_name = "${var.key_vault_name}"
    key_name   = "recovery"
  }
EOT
}

module "boundary" {
  source = "../.."

  global_admin_login_name = var.global_admin_login_name
  global_admin_password   = var.global_admin_password
}
