
variable "location" {
  description = "The GCS location to create and test resources in"
  type        = string
}

variable "name" {
  type = string
}

# Module dependencies
output "module_depends_on_output" {
    value = google_storage_bucket.this.self_link
}