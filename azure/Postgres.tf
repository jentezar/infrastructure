resource "azurem_postgresql_flexible_server" "postgres_server" {
    name = "p466-posgtres-server"
    resource_group_name = azurem_resource_group.p466.name
    location = azurem_resource_group.p466.location
    version = "13"

    administrator_login = var.postgres_admin_username
    administrator_password = var.postgres_admin_password
    sku_name = "GP_Standard_D4s_v3"
    storage_mb = 32768
}
resource "azurem_postgresql_flexible_server_database" "postgres_primes_db" {
    name = "primes"
    server_id = azurem_postgresql_flexible_server.postgres_server.server_id
    collation = "en_US.utf8"
    charset = "UTF8"
}

variable "postgres_admin_username" {
    default = "admin410"
}
variable "postgres_admin_password" {
    default = "p466password321!"
}