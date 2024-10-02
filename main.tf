# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "boundary_scope" "global" {
  scope_id     = "global"
  name         = "global"
  description  = "Global Scope"
  global_scope = true
}

resource "boundary_auth_method_password" "global" {
  scope_id    = "global"
  name        = "Global Password Auth"
  description = "Global scope password authentication"
}

resource "boundary_account_password" "ampw_global_admin" {
  auth_method_id = boundary_auth_method_password.global.id
  login_name     = var.global_admin_login_name
  password       = var.global_admin_password
}

resource "boundary_user" "ampw_global_admin" {
  scope_id    = "global"
  name        = "admin_user"
  description = "Global admin user"

  account_ids = [
    boundary_account_password.ampw_global_admin.id,
  ]
}

resource "boundary_role" "global_admin" {
  scope_id = "global"
  name     = "global_admin"

  grant_strings = [
    "ids=*;type=*;actions=*"
  ]

  grant_scope_ids = [
    "this",
  ]

  principal_ids = [
    boundary_user.ampw_global_admin.id,
  ]
}

resource "boundary_role" "global_anon_listing" {
  scope_id = "global"
  name     = "global_anon_listing"

  grant_strings = [
    "ids=*;type=scope;actions=list,no-op",
    "ids=*;type=auth-method;actions=list,authenticate",
    "ids={{.Account.Id}};actions=read,change-password",
  ]

  principal_ids = [
    "u_anon",
  ]
}