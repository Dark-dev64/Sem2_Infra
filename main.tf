terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_network" "app_net" {
  name = var.app_net_name
}

resource "docker_network" "persistence_net" {
  name = var.persistence_net_name
}

resource "docker_network" "monitor_net" {
  name = var.monitor_net_name
}

resource "docker_container" "app1" {
  name  = "app1"
  image = var.nginx_image

  networks_advanced {
    name = docker_network.app_net.name
  }

  networks_advanced {
    name = docker_network.persistence_net.name
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}

resource "docker_container" "app2" {
  name  = "app2"
  image = var.nginx_image

  networks_advanced {
    name = docker_network.app_net.name
  }

  networks_advanced {
    name = docker_network.persistence_net.name
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}

resource "docker_container" "app3" {
  name  = "app3"
  image = var.nginx_image

  networks_advanced {
    name = docker_network.app_net.name
  }

  networks_advanced {
    name = docker_network.persistence_net.name
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}

resource "docker_container" "redis" {
  name  = "redis"
  image = var.redis_image

  networks_advanced {
    name = docker_network.persistence_net.name
  }
}

resource "docker_container" "postgres" {
  name  = "postgres"
  image = var.postgres_image

  env = [
    "POSTGRES_USER=${var.postgres_user}",
    "POSTGRES_PASSWORD=${var.postgres_password}",
    "POSTGRES_DB=${var.postgres_db}"
  ]

  networks_advanced {
    name = docker_network.persistence_net.name
  }
}

resource "docker_container" "grafana" {
  name  = "grafana"
  image = var.grafana_image

  ports {
    internal = 3000
    external = var.grafana_port
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}
