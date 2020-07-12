variable "storage_bucket_ids" {
    type = list(string)
}

variable "build_agent_email" {
    type = string
}

# Module dependencies
variable "module_depends_on" {
    type = any
}