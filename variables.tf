variable "app_net_name" {
  type    = string
  default = "app_net"
}

variable "persistence_net_name" {
  type    = string
  default = "persistence_net"
}

variable "monitor_net_name" {
  type    = string
  default = "monitor_net"
}

variable "nginx_image" {
  type    = string
  default = "nginx:latest"
}

variable "redis_image" {
  type    = string
  default = "redis:latest"
}

variable "postgres_image" {
  type    = string
  default = "postgres:15"
}

variable "grafana_image" {
  type    = string
  default = "grafana/grafana:latest"
}

variable "postgres_user" {
  type    = string
  default = "admin"
}

variable "postgres_password" {
  type    = string
  default = "admin"
}

variable "postgres_db" {
  type    = string
  default = "mydb"
}

variable "grafana_port" {
  type    = number
  default = 4000
}
