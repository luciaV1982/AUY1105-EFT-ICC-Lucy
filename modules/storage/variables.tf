variable "bucket_name" {
  description = "Nombre único del bucket S3"
  type        = string
}

variable "enable_versioning" {
  description = "Permite habilitar o deshabilitar el versionado del bucket"
  type        = bool
  default     = true
}