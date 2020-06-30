module "google_apis" {
  source = "./google_apis"
}

# Wait 30 seconds between enabling Google APIs and attempting to use them
#
# While the google_project_service resource does wait for the API to become enabled,
#   the enabling is in practice eventually consistent - and some calls may fail even
#   after GCP claims that the API is free to use.
#
# See https://github.com/terraform-providers/terraform-provider-google/issues/2129 for some discussion

resource "time_sleep" "wait_30_seconds" {
  depends_on = [module.google_apis]

  create_duration = "30s"
}

resource "google_compute_firewall" "allow_winrm" {
  depends_on = [time_sleep.wait_30_seconds]
  name       = "allow-winrm"
  network    = "default"

  allow {
    protocol = "tcp"
    ports    = ["5986"]
  }
}
