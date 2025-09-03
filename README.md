# Infraestructura como Código (IaC) con Terraform + Docker

# Componentes

- *3 Aplicaciones (Nginx simulando NodeJS)* → conectadas a app_net.
- *Redis* → conectado a persistence_net.
- *PostgreSQL* → conectado a persistence_net.
- *Grafana* → conectado a monitor_net y app_net.

# Requisitos

- [Terraform](https://developer.hashicorp.com/terraform/downloads) ≥ v1.3  
- [Docker](https://docs.docker.com/get-docker/) en ejecución  

# Pasos para desplegar

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/Dark-dev64/Sem2_Infra