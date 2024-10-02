# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

#------------------------------------------------------------------------------
# AWS Variables
#------------------------------------------------------------------------------
variable "kms_region" {
  type        = string
  description = "AWS KMS region"
}

variable "kms_key_id" {
  type        = string
  description = "AWS KMS key ID for recovery"
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