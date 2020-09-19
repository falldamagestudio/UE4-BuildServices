resource "google_storage_bucket" "this" {
  name          = var.name
  location      = var.location
  force_destroy = true

  uniform_bucket_level_access = true
}