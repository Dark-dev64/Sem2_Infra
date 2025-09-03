output "grafana_url" {
  value = "http://localhost:${var.grafana_port}"
}

output "postgres_connection" {
  value = "postgresql://${var.postgres_user}:${var.postgres_password}@localhost:5432/${var.postgres_db}"
}

output "redis_info" {
  value = "Redis corriendo en red: ${var.persistence_net_name}"
}
