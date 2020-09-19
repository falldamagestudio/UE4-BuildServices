module "build_agent_account" {
  source = "./build_agent_account"

  resource_name_prefix = var.resource_name_prefix
}

module "build_agent_access_to_storage" {
  source = "./build_agent_access_to_storage"

  storage_bucket_ids = var.storage_bucket_ids
  build_agent_email  = module.build_agent_account.email

  # Module dependencies
  module_depends_on = var.module_depends_on
}

module "build_agent_access_to_logging" {
  source = "./build_agent_access_to_logging"

  build_agent_email = module.build_agent_account.email
}

module "build_agents" {
  source = "./build_agents"

  image          = var.image
  machine_type   = var.machine_type
  boot_disk_type = var.boot_disk_type
  boot_disk_size = var.boot_disk_size

  github_scope = var.github_scope
  github_pat   = var.github_pat

  service_account_email = module.build_agent_account.email

  instance_name = var.instance_name
  runner_name   = var.runner_name
  on_demand     = var.on_demand
}
