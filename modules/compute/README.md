# Módulo Compute

## Descripción

Este módulo despliega una instancia EC2 junto con su Security Group, permitiendo el acceso seguro mediante SSH y HTTP.

## Recursos creados

- Security Group
- Instancia EC2

## Variables

| Variable | Descripción |
|----------|-------------|
| vpc_id | ID de la VPC |
| subnet_id | ID de la subred pública |
| ami_id | AMI utilizada para crear la EC2 |
| instance_type | Tipo de instancia |
| key_name | Nombre de la llave SSH |
| allowed_ssh_cidr | Rango IP autorizado para SSH |

## Outputs

| Output | Descripción |
|---------|-------------|
| instance_id | ID de la instancia EC2 |
| public_ip | Dirección IP pública |
| private_ip | Dirección IP privada |
| security_group_id | ID del Security Group |