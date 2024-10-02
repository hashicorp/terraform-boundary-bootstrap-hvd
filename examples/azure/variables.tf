# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

#------------------------------------------------------------------------------
# Azure Variables
#------------------------------------------------------------------------------
variable "key_vault_name" {
  type        = string
  description = "Keyvault name that contains the recovery key"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID for the key vault"
}

variable "boundary_endpoint" {
  type        = string
  description = "Boundary endpoint"
}

#------------------------------------------------------------------------------
# Boundary Module Variables
#------------------------------------------------------------------------------
variable "global_admin_login_name" {
  type        = string
  description = "Global admin login name"
}

variable "global_admin_password" {
  type        = string
  description = "Global admin password"
}
