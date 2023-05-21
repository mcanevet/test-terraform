local {
    module_version = startswith(file("${path.module}/.git/HEAD"), "ref: ") ? split("/", file("${path.module}/.git/HEAD"))[-1] : file("${path.module}/.git/HEAD")
}

output "debug" {
    value = local.module_version
}
