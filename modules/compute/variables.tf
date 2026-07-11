variable "vpc_id" {
  description = "ID de la VPC donde se creará la instancia EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID de la subred pública donde se desplegará la EC2"
  type        = string
}

variable "ami_id" {
  description = "AMI utilizada para crear la instancia EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nombre del par de claves SSH"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Rango CIDR autorizado para conectarse por SSH"
  type        = string
  default     = "0.0.0.0/0"
}