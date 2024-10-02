# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

#------------------------------------------------------------------------------
# Google Variables
#------------------------------------------------------------------------------
variable "project_id" {
  type        = string
  description = "ID of GCP Project to create resources in."
}

variable "region" {
  type        = string
  description = "Region of GCP Project to create resources in."
}

variable "keyring_name" {
  type        = string
  description = "Region of GCP Project to create resources in."
}

variable "key_name" {
  type        = string
  description = "Region of GCP Project to create resources in."
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
