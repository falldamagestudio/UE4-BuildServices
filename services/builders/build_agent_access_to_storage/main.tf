resource "google_storage_bucket_iam_member" "this" {
  for_each = toset(var.storage_bucket_ids)
  bucket   = each.value
  role     = "roles/storage.admin"
  member   = "serviceAccount:${var.build_agent_email}"

  # Module dependencies
  depends_on = [var.module_depends_on]
}
