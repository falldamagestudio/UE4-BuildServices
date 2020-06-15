variable "terraform_cloud_organization" {
  type = string
}

variable "terraform_cloud_workspace_prefix" {
  type = string
}

variable "project_id" {
  description = "The GCP project to use for integration tests"
  type        = string
}

variable "region" {
  description = "The GCP region to create and test resources in"
  type        = string
}

variable "zone" {
  description = "The GCP zone to create and test resources in"
  type        = string
}
