# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_version = ">= 1.7"

  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = ">= 1.1.15"
    }
  }
}