# Módulo Network

## Descripción

Este módulo crea la infraestructura de red necesaria para desplegar recursos en AWS.

## Recursos creados

- VPC
- Subred pública
- Subred privada
- Internet Gateway
- Route Table pública
- Asociación de Route Table

## Variables

| Variable | Descripción |
|----------|-------------|
| vpc_cidr | CIDR de la VPC |
| public_subnet_cidr | CIDR de la subred pública |
| private_subnet_cidr | CIDR de la subred privada |
| availability_zone | Zona de disponibilidad |

## Outputs

| Output | Descripción |
|---------|-------------|
| vpc_id | ID de la VPC |
| public_subnet_id | ID de la subred pública |
| private_subnet_id | ID de la subred privada |