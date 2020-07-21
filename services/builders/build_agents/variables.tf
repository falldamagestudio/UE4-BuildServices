
variable "github_scope" {
  type = string
}

variable "github_pat" {
  type = string
}

variable "image" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "boot_disk_size" {
  type = number
}

variable "service_account_email" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "runner_name" {
  type = string
}

variable "on_demand" {
  type = bool
}
