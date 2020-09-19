

variable "name" {
  type = string
}

variable "image" {
  type = string
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}

variable "zone" {
  type    = string
  default = null
}

variable "project_id" {
  type    = string
  default = null
}

variable "boot_disk_type" {
  type = string
}

variable "boot_disk_size" {
  type = number
}

variable "github_scope" {
  type = string
}

variable "github_pat" {
  type = string
}

variable "runner_name" {
  type = string
}

variable "service_account_email" {
  type = string
}

variable "on_demand" {
  type = bool
}
