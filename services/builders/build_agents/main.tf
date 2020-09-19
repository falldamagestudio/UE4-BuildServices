module "build_agent" {
  source                = "../ue4_gha_build_agent"
  name                  = var.instance_name
  image                 = var.image
  machine_type          = var.machine_type
  boot_disk_type        = var.boot_disk_type
  boot_disk_size        = var.boot_disk_size
  service_account_email = var.service_account_email

  github_scope = var.github_scope
  github_pat   = var.github_pat
  runner_name  = var.runner_name
  on_demand    = var.on_demand
}
