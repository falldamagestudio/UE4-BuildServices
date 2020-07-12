output "storage_bucket_id" {
    value = var.name
}

# Module dependencies
output "module_depends_on_output" {
    value = module.longtail_store.module_depends_on_output
}