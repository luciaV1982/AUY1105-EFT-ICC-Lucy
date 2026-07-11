variable "aws_region" {
  description = "Región de AWS donde se desplegará la infraestructura"
  type        = string
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "Zona de disponibilidad utilizada por las subredes"
  type        = string
  default     = "us-east-1a"
}

variable "vpc_cidr" {
  description = "Rango CIDR de la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Rango CIDR de la subred pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "Rango CIDR de la subred privada"
  type        = string
  default     = "10.0.2.0/24"
}

variable "ami_id" {
  description = "ID de la AMI utilizada para crear la instancia EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nombre del par de claves SSH existente en AWS"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Rango CIDR autorizado para conectarse por SSH"
  type        = string
}

variable "bucket_name" {
  description = "Nombre globalmente único del bucket S3"
  type        = string
}

variable "enable_versioning" {
  description = "Habilita o suspende el versionado del bucket S3"
  type        = bool
  default     = true
}