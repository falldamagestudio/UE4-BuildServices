resource "google_storage_bucket_iam_binding" "this" {
  for_each = toset(var.storage_bucket_ids)
  bucket = each.value
  role = "roles/storage.admin"
  members = [
    "serviceAccount:${var.build_agent_email}",
  ]
}