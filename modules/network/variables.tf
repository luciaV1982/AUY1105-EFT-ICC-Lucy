variable "vpc_cidr" {
  description = "CIDR de la VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR de la subred pública"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR de la subred privada"
  type        = string
}

variable "availability_zone" {
  description = "Zona de disponibilidad"
  type        = string
}