output "debug" {
    value = file("${path.module}/.git/HEAD")
}
