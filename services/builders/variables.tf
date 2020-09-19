variable "resource_name_prefix" {
  type = string
}

variable "github_scope" {
  type = string
}

variable "github_pat" {
  description = "Personal Access Token used to access game's GitHub repository (sensitive)"
  type        = string
}

variable "image" {
  type    = string
  default = "windows-server-2019-dc-core-v20200512"
}

variable "machine_type" {
  type    = string
  default = "n1-standard-4"
}

variable "boot_disk_type" {
  type    = string
  default = "pd-ssd"
}

variable "boot_disk_size" {
  type    = number
  default = 200
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

variable "storage_bucket_ids" {
  type = list(string)
}

# Module dependencies
variable "module_depends_on" {
  type = any
}