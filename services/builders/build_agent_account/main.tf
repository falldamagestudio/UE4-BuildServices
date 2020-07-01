resource "google_service_account" "this" {
  account_id   = "${var.resource_name_prefix}-build-agent"
  display_name = "${var.resource_name_prefix} Build Agent"
}
