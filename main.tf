locals {
    module_ref = file("${path.module}/.git/HEAD")
    module_version = startswith(local.module_ref, "ref: ") ? element(split("/", local.module_ref), length(split("/", local.module_ref)) - 1) : local.module_ref
}

output "debug" {
    value = local.module_version
}
