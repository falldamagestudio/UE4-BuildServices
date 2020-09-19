
module "ue4_gha_build_agent" {
  source = "../ue4_build_agent"

  name                  = var.name
  project_id            = var.project_id
  zone                  = var.zone
  image                 = var.image
  boot_disk_type        = var.boot_disk_type
  boot_disk_size        = var.boot_disk_size
  machine_type          = var.machine_type
  service_account_email = var.service_account_email

  metadata = {
    github-scope = var.github_scope
    github-pat   = var.github_pat
    runner-name  = var.runner_name
    on-demand    = var.on_demand
  }
}