output "debug" {
    value = file("${path.module}/.git/config")
}
