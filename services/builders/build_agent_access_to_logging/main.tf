resource "google_project_iam_member" "this" {
  project = var.project_id
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${var.build_agent_email}"
}
